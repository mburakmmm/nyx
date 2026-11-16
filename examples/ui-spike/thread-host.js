// wasm32-freestanding-threads denemesi.
// Ana wasm iş parçacığı bir Worker'dır. Sayfa Atomics.wait yapmaz.
// COOP/COEP yoksa paylaşımlı bellek açılmaz ve Faz 0 kararı durur.

import { NoxExit } from "./host.js";

const ABI = 1;

function readLeb(bytes, pos) {
  let result = 0;
  let shift = 0;
  while (pos.i < bytes.length) {
    const byte = bytes[pos.i];
    pos.i += 1;
    result |= (byte & 0x7f) << shift;
    if ((byte & 0x80) === 0) return result;
    shift += 7;
  }
  throw new Error("leb");
}

export function memoryImport(bytes) {
  const b = new Uint8Array(bytes);
  const pos = { i: 8 };
  while (pos.i < b.length) {
    const id = b[pos.i];
    pos.i += 1;
    const size = readLeb(b, pos);
    const end = pos.i + size;
    if (id === 2) {
      const count = readLeb(b, pos);
      let n = 0;
      while (n < count) {
        const moduleLen = readLeb(b, pos);
        pos.i += moduleLen;
        const fieldLen = readLeb(b, pos);
        pos.i += fieldLen;
        const kind = b[pos.i];
        pos.i += 1;
        if (kind === 0) readLeb(b, pos);
        else if (kind === 1) {
          pos.i += 1;
          const flags = b[pos.i];
          pos.i += 1;
          readLeb(b, pos);
          if (flags & 1) readLeb(b, pos);
        } else if (kind === 2) {
          const flags = b[pos.i];
          pos.i += 1;
          const min = readLeb(b, pos);
          const max = flags & 1 ? readLeb(b, pos) : undefined;
          return { min, max, shared: (flags & 2) !== 0 };
        } else if (kind === 3) pos.i += 2;
        n += 1;
      }
    }
    pos.i = end;
  }
  return null;
}

export function probeThreads(bytes) {
  if (!globalThis.crossOriginIsolated) {
    return Promise.reject(new Error("crossOriginIsolated yok"));
  }
  const mem = memoryImport(bytes);
  if (!mem || !mem.shared) return Promise.reject(new Error("paylaşımlı bellek yok"));
  const channel = "nyx-threads-" + Math.random().toString(36).slice(2);
  const memory = new WebAssembly.Memory({
    initial: mem.min,
    maximum: mem.max == null ? mem.min : mem.max,
    shared: true,
  });
  const tids = new Int32Array(new SharedArrayBuffer(4));
  const workers = [];
  const chan = new BroadcastChannel(channel);
  let out = "";
  let settle;
  const done = new Promise((resolve, reject) => {
    settle = { resolve, reject };
  });
  const timer = setTimeout(() => settle.reject(new Error("süre")), 8000);
  function start(main, tid, arg) {
    const worker = new Worker(new URL(import.meta.url), { type: "module" });
    workers.push(worker);
    worker.onerror = (event) => {
      const where = (event.filename || "işçi") + ":" + String(event.lineno || 0);
      settle.reject(new Error((event.message || "yüklenemedi") + " @ " + where));
    };
    worker.postMessage({ nyxThread: { main, mod, memory, tid, arg, tids, channel } });
  }
  let mod = null;
  chan.onmessage = (event) => {
    const msg = event.data || {};
    if (msg.type === "write" && msg.fd !== 2) out += new TextDecoder().decode(msg.bytes);
    else if (msg.type === "exit") settle.resolve({ code: msg.code, out });
    else if (msg.type === "spawn") start(false, msg.tid, msg.arg);
    else if (msg.type === "fail") settle.reject(new Error(msg.message || "threads"));
  };
  return WebAssembly.compile(bytes).then((compiled) => {
    mod = compiled;
    start(true, 0, 0);
    return done;
  }).finally(() => {
    clearTimeout(timer);
    let i = 0;
    while (i < workers.length) {
      workers[i].terminate();
      i += 1;
    }
    chan.close();
  });
}

function hostImports(memory, spawn, exitAll) {
  return {
    nox_host: {
      write(fd, ptr, len) {
        const copy = new Uint8Array(memory.buffer, ptr, len).slice();
        const chan = hostImports.chan;
        chan.postMessage({ type: "write", fd, bytes: copy });
        return len;
      },
      read() {
        return 0;
      },
      clock_ms(kind) {
        return BigInt(Math.trunc(kind === 0 ? Date.now() : performance.now()));
      },
      random_fill(ptr, len) {
        if (len <= 0) return;
        const tmp = new Uint8Array(len);
        crypto.getRandomValues(tmp);
        new Uint8Array(memory.buffer, ptr, len).set(tmp);
      },
      sleep_ms(ms) {
        if (ms > 0) Atomics.wait(new Int32Array(new SharedArrayBuffer(4)), 0, 0, ms);
      },
      thread_spawn: spawn,
      exit(code) {
        exitAll(code);
        throw new NoxExit(code);
      },
    },
    env: { memory },
  };
}

async function runThread(job) {
  const chan = new BroadcastChannel(job.channel);
  hostImports.chan = chan;
  const exitAll = (code) => chan.postMessage({ type: "exit", code });
  const fail = (message) => chan.postMessage({ type: "fail", message });
  const spawn = (arg) => {
    const tid = Atomics.add(job.tids, 0, 1) + 1;
    chan.postMessage({ type: "spawn", tid, arg });
    return tid;
  };
  try {
    const instance = await WebAssembly.instantiate(job.mod, hostImports(job.memory, spawn, exitAll));
    const version = instance.exports.nox_host_abi_version();
    if (version !== ABI) throw new Error("nox_host ABI " + version);
    if (job.main) {
      instance.exports._start();
      exitAll(0);
    } else instance.exports.nox_host_thread_start(job.tid, job.arg);
  } catch (error) {
    if (!(error instanceof NoxExit)) fail(String(error && error.message ? error.message : error));
  }
}

if (typeof WorkerGlobalScope !== "undefined" && globalThis instanceof WorkerGlobalScope) {
  self.onmessage = (event) => {
    const job = event.data && event.data.nyxThread;
    if (job) runThread(job);
  };
}
