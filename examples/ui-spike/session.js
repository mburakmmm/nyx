// Faz 2 oturumu. Her örnek kendi wasm belleğini tutar.
// Olay satırı gider. Fonksiyon gitmez.
// Bekleme http://nyx-ui.invalid/event adresini host tamamlar. Ağ yoktur.

import { NoxExit } from "./host.js";
import { escapeField, patchTree, readHost, splitFrames } from "./mount.js";

export const EVENT_URL = "http://nyx-ui.invalid/event";
const UI_ORIGIN = "http://nyx-ui.invalid";
const ABI = 1;
const QUEUE_LIMIT = 64;

const encoder = new TextEncoder();
const empty = new Uint8Array(0);
const cookieJar = new Map();

export function clearCookies() {
  cookieJar.clear();
}

export function resolveUiUrl(url, pageOrigin) {
  if (url === EVENT_URL) return { kind: "event", url };
  if (!url.startsWith(UI_ORIGIN + "/")) throw new Error("köken reddedildi");
  if (!pageOrigin || String(pageOrigin).includes("nyx-ui.invalid")) throw new Error("köken reddedildi");
  let origin = String(pageOrigin);
  if (origin.endsWith("/")) origin = origin.slice(0, -1);
  const path = url.slice(UI_ORIGIN.length);
  if (!path.startsWith("/") || path.startsWith("//")) throw new Error("köken reddedildi");
  const target = new URL(origin + path);
  if (target.origin !== new URL(origin + "/").origin) throw new Error("köken reddedildi");
  return { kind: "fetch", url: target.toString() };
}

function cookieHeader() {
  return [...cookieJar.entries()].map(([key, value]) => key + "=" + value).join("; ");
}

function storeCookies(response) {
  const lines = typeof response.headers.getSetCookie === "function" ? response.headers.getSetCookie() : [];
  let i = 0;
  while (i < lines.length) {
    const pair = lines[i].split(";")[0];
    const cut = pair.indexOf("=");
    if (cut > 0) cookieJar.set(pair.slice(0, cut).trim(), pair.slice(cut + 1).trim());
    i += 1;
  }
}

function headerLines(text) {
  const headers = {};
  const lines = text.split("\n");
  let i = 0;
  while (i < lines.length) {
    const cut = lines[i].indexOf(": ");
    if (cut > 0) headers[lines[i].slice(0, cut)] = lines[i].slice(cut + 2);
    i += 1;
  }
  return headers;
}

function responseHeaders(response) {
  let out = "";
  response.headers.forEach((value, key) => {
    out += key + ": " + value + "\n";
  });
  return encoder.encode(out);
}

async function sameOriginFetch(url, req, signal) {
  const headers = headerLines(req.headers);
  const init = { method: req.method || "GET", headers, signal };
  if (req.hasBody && req.method !== "GET" && req.method !== "HEAD") init.body = req.body;
  if (typeof document !== "undefined") init.credentials = "same-origin";
  else {
    const cookie = cookieHeader();
    if (cookie.length > 0) headers.Cookie = cookie;
  }
  const response = await fetch(url, init);
  storeCookies(response);
  return {
    id: req.id,
    status: response.status,
    errorKind: -1,
    headers: responseHeaders(response),
    body: new Uint8Array(await response.arrayBuffer()),
  };
}

function cancelResult(id) {
  return {
    id,
    status: 200,
    errorKind: -1,
    headers: empty,
    body: encoder.encode("{\"ok\":false,\"error\":\"iptal\",\"generation\":0}"),
  };
}

function copyBytes(memory, ptr, len) {
  return new Uint8Array(memory.buffer, ptr, len).slice();
}

function readPending(instance) {
  const x = instance.exports;
  const lenPtr = x.nox_host_alloc(4);
  if (!lenPtr) throw new Error("nox_host_alloc başarısız");
  const ptr = x.nox_host_fetch_pending(lenPtr);
  const len = new DataView(x.memory.buffer).getUint32(lenPtr, true);
  const bytes = ptr ? copyBytes(x.memory, ptr, len) : empty;
  if (ptr) x.nox_host_free(ptr, len);
  x.nox_host_free(lenPtr, 4);
  const dv = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
  const dec = new TextDecoder();
  const out = [];
  let i = 0;
  const u32 = () => {
    const v = dv.getUint32(i, true);
    i += 4;
    return v;
  };
  const take = () => {
    const n = u32();
    const b = bytes.subarray(i, i + n);
    i += n;
    return b;
  };
  while (i + 20 <= bytes.length) {
    const id = u32();
    const kind = u32();
    const stream = u32();
    const arg = u32();
    const hasBody = u32() !== 0;
    out.push({
      id,
      kind,
      stream,
      arg,
      hasBody,
      method: dec.decode(take()),
      url: dec.decode(take()),
      headers: dec.decode(take()),
      body: take().slice(),
    });
  }
  return out;
}

function completeFetch(instance, done) {
  const x = instance.exports;
  const put = (bytes) => {
    const p = x.nox_host_alloc(bytes.length);
    if (!p) throw new Error("nox_host_alloc başarısız");
    if (bytes.length > 0) new Uint8Array(x.memory.buffer, p, bytes.length).set(bytes);
    return p;
  };
  const hp = put(done.headers);
  const bp = put(done.body);
  const rc = x.nox_host_fetch_complete(done.id, done.status, done.errorKind, hp, done.headers.length, bp, done.body.length);
  x.nox_host_free(hp, done.headers.length);
  x.nox_host_free(bp, done.body.length);
  if (rc !== 0) throw new Error("nox_host_fetch_complete " + rc);
}

export class UiDriver {
  constructor(onFrame, onError, pageOrigin) {
    this.onFrame = onFrame || null;
    this.onError = onError || null;
    this.queue = [];
    this.waiters = [];
    this.disposed = false;
    this.done = Promise.resolve();
    this._opened = new Promise((resolve, reject) => {
      this._openResolve = resolve;
      this._openReject = reject;
    });
    this.pageOrigin = pageOrigin || "";
    this._cancelFetch = null;
    this._openedOnce = false;
    this._worker = null;
    this.local = false;
  }

  send(line) {
    if (this.disposed) return;
    if (this.queue.length >= QUEUE_LIMIT) {
      this.fail("olay kuyruğu dolu");
      return;
    }
    const waiter = this.waiters.shift();
    if (waiter) waiter(line);
    else this.queue.push(line);
    if (this._cancelFetch) this._cancelFetch();
  }

  fail(message) {
    if (this.onError) this.onError(message);
    if (!this._openedOnce) {
      this._openedOnce = true;
      this._openReject(new Error(message));
    }
  }

  nextEvent() {
    if (this.disposed) return Promise.resolve("stop");
    if (this.queue.length > 0) return Promise.resolve(this.queue.shift());
    return new Promise((resolve) => this.waiters.push(resolve));
  }

  emit(frame) {
    if (this.disposed) return;
    if (this.onFrame) this.onFrame(frame);
    if (!this._openedOnce) {
      this._openedOnce = true;
      this._openResolve(frame);
    }
  }

  async start(source) {
    this.done = this.run(source);
    return this._opened;
  }

  async run(source) {
    const compiled = source instanceof WebAssembly.Module ? source : await WebAssembly.compile(source);
    const chunks = [];
    const errChunks = [];
    const decoder = new TextDecoder("utf-8", { fatal: false });
    let memory = null;
    const imports = {
      nox_host: {
        write: (fd, ptr, len) => {
          const copy = copyBytes(memory, ptr, len);
          const text = decoder.decode(copy, { stream: true });
          if (fd === 2) errChunks.push(text);
          else chunks.push(text);
          return len;
        },
        read: () => 0,
        clock_ms: (kind) => BigInt(Math.trunc(kind === 0 ? Date.now() : performance.now())),
        random_fill: (ptr, len) => {
          crypto.getRandomValues(new Uint8Array(memory.buffer, ptr, len));
        },
        sleep_ms: () => {},
        exit: (code) => {
          throw new NoxExit(code);
        },
      },
    };
    const instance = await WebAssembly.instantiate(compiled, imports);
    memory = instance.exports.memory;
    const version = instance.exports.nox_host_abi_version();
    if (version !== ABI) throw new Error("nox_host ABI " + version + ", host " + ABI);
    if (typeof instance.exports.nox_host_caps_set !== "function") {
      throw new Error("olay döngüsü --asyncify ve nox.http ister");
    }
    instance.exports.nox_host_caps_set(1);
    let step = () => instance.exports._start();
    try {
      while (!this.disposed) {
        let code = 0;
        let exited = false;
        try {
          step();
        } catch (error) {
          if (error instanceof NoxExit) {
            code = error.code;
            exited = true;
          } else throw error;
        }
        const text = chunks.join("") + decoder.decode();
        chunks.length = 0;
        const err = errChunks.join("");
        errChunks.length = 0;
        if (exited && code !== 0) {
          this.fail((text + err).trim() || "nox çıkış " + code);
          break;
        }
        if (text.trim().length > 0) {
          const frames = splitFrames(text);
          let n = 0;
          while (n < frames.length) {
            this.emit(frames[n]);
            n += 1;
          }
        }
        const suspended = typeof instance.exports.nox_host_status === "function" && instance.exports.nox_host_status() === 1;
        if (exited || !suspended) break;
        const pending = readPending(instance);
        const req = pending.find((item) => item.kind === 0);
        if (!req) throw new Error("askıda istek yok");
        let resolved;
        try {
          resolved = resolveUiUrl(req.url, this.pageOrigin);
        } catch (error) {
          completeFetch(instance, {
            id: req.id,
            status: 0,
            errorKind: 0,
            headers: empty,
            body: encoder.encode(String(error && error.message ? error.message : error)),
          });
          step = () => instance.exports.nox_host_resume();
          continue;
        }
        if (resolved.kind === "event") {
          const line = await this.nextEvent();
          completeFetch(instance, {
            id: req.id,
            status: 200,
            errorKind: -1,
            headers: empty,
            body: encoder.encode(line),
          });
        } else {
          const control = new AbortController();
          let abortSettle = null;
          const aborted = new Promise((resolve) => {
            abortSettle = resolve;
          });
          this._cancelFetch = () => abortSettle("abort");
          if (this.disposed || this.queue.length > 0) {
            this._cancelFetch = null;
            control.abort();
            completeFetch(instance, cancelResult(req.id));
          } else {
            let winner;
            try {
              winner = await Promise.race([
                sameOriginFetch(resolved.url, req, control.signal).then((result) => ({ kind: "http", result })),
                aborted.then((flag) => ({ kind: flag })),
              ]);
            } catch (error) {
              winner = { kind: "fail", error };
            } finally {
              this._cancelFetch = null;
            }
            if (!winner || winner.kind !== "http") {
              control.abort();
              completeFetch(instance, cancelResult(req.id));
            } else {
              completeFetch(instance, winner.result);
            }
          }
        }
        step = () => instance.exports.nox_host_resume();
      }
    } catch (error) {
      this.fail(String(error && error.message ? error.message : error));
    }
  }
}

export class UiSession extends UiDriver {
  constructor(parent, onError, pageOrigin) {
    const live = new Map();
    let session = null;
    super((frame) => {
      session._applyHost(readHost(frame));
      patchTree(parent, frame, live);
    }, onError, pageOrigin);
    session = this;
    this.parent = parent;
    this.live = live;
    this.listeners = 0;
    this._history = false;
    this._onPop = null;
    this.onClick = (event) => {
      const button = event.target && event.target.closest ? event.target.closest("button[data-nyx-event]") : null;
      if (button && this.parent.contains(button)) {
        event.preventDefault();
        const name = button.getAttribute("data-nyx-event");
        if (name) this.send("click " + name);
        return;
      }
      const modal = event.target && event.target.closest ? event.target.closest(".nyx-modal") : null;
      if (modal && event.target === modal && this.parent.contains(modal)) {
        const name = modal.getAttribute("data-nyx-event");
        if (name) this.send("click " + name);
      }
    };
    this.onInput = (event) => {
      const target = event.target;
      if (!target || !this.parent.contains(target) || target.tagName !== "INPUT") return;
      if (target.type === "checkbox") return;
      if (event.isComposing) return;
      const name = target.getAttribute("data-nyx-event");
      if (!name) return;
      this.send("input " + name + " " + escapeField(target.value));
    };
    this.onChange = (event) => {
      const target = event.target;
      if (!target || !this.parent.contains(target)) return;
      const name = target.getAttribute("data-nyx-event");
      if (!name) return;
      if (target.tagName === "SELECT") this.send("input " + name + " " + escapeField(target.value));
      if (target.tagName === "INPUT" && target.type === "checkbox") {
        this.send("input " + name + " " + (target.checked ? "1" : "0"));
      }
    };
    this.onKey = (event) => {
      if (event.key === "Escape") {
        const open = this.parent.querySelector(".nyx-modal:not([hidden])");
        if (!open) return;
        const name = open.getAttribute("data-nyx-event");
        if (name) this.send("click " + name);
        return;
      }
      if (event.key === "ArrowRight" || event.key === "ArrowLeft") {
        const tab = event.target && event.target.closest ? event.target.closest(".nyx-tab") : null;
        if (!tab || !this.parent.contains(tab)) return;
        const list = tab.parentElement;
        if (!list) return;
        const tabs = [...list.querySelectorAll(".nyx-tab")];
        const index = tabs.indexOf(tab);
        if (index < 0) return;
        const step = event.key === "ArrowRight" ? 1 : -1;
        const next = tabs[(index + step + tabs.length) % tabs.length];
        const name = next && next.getAttribute("data-nyx-event");
        if (!name) return;
        event.preventDefault();
        this.send("click " + name);
        return;
      }
      if (event.key === " " && !event.isTrusted) {
        const box = event.target;
        if (!box || box.tagName !== "INPUT" || box.type !== "checkbox" || !this.parent.contains(box)) return;
        event.preventDefault();
        box.checked = !box.checked;
        const name = box.getAttribute("data-nyx-event");
        if (name) this.send("input " + name + " " + (box.checked ? "1" : "0"));
        return;
      }
      if (event.key !== "Enter" || event.isTrusted) return;
      const target = event.target && event.target.closest ? event.target.closest("button[data-nyx-event]") : null;
      if (!target || !parent.contains(target)) return;
      const name = target.getAttribute("data-nyx-event");
      if (name) this.send("click " + name);
    };
    parent.addEventListener("click", this.onClick);
    parent.addEventListener("keydown", this.onKey);
    parent.addEventListener("input", this.onInput);
    parent.addEventListener("change", this.onChange);
    this.listeners = 4;
  }

  send(line) {
    if (this._worker) {
      if (this.disposed) return;
      this._worker.postMessage({ type: "event", line });
      return;
    }
    super.send(line);
  }

  async start(source) {
    if (this.local || typeof Worker !== "function") return super.start(source);
    let worker;
    try {
      worker = new Worker(new URL("./ui-worker.js", import.meta.url), { type: "module" });
    } catch (error) {
      return super.start(source);
    }
    this._worker = worker;
    let settled = false;
    const opened = new Promise((resolve, reject) => {
      const timer = setTimeout(() => {
        if (settled) return;
        settled = true;
        reject(new Error("worker açılmadı"));
      }, 8000);
      worker.onmessage = (event) => {
        const msg = event.data || {};
        if (msg.type === "frame") {
          this.emit(msg.frame);
          if (!settled) {
            settled = true;
            clearTimeout(timer);
            resolve(msg.frame);
          }
        } else if (msg.type === "error") {
          if (!settled) {
            settled = true;
            clearTimeout(timer);
            reject(new Error(msg.message || "worker"));
          } else this.fail(msg.message || "worker");
        }
      };
      worker.onerror = (event) => {
        if (settled) return;
        settled = true;
        clearTimeout(timer);
        reject(new Error(event.message || "worker"));
      };
    });
    try {
      worker.postMessage({ type: "start", source, origin: this.pageOrigin || "" });
      return await opened;
    } catch (error) {
      settled = true;
      this._worker = null;
      try { worker.terminate(); } catch { /* işçi zaten kapalı */ }
      return super.start(source);
    }
  }

  _applyHost(commands) {
    let i = 0;
    while (i < commands.length) {
      const command = commands[i];
      if (command === "listen") this._armHistory();
      else if (command.startsWith("push ")) this._writeRoute(command.slice(5), false);
      else if (command.startsWith("replace ")) this._writeRoute(command.slice(8), true);
      i += 1;
    }
  }

  _armHistory() {
    if (this._history) return;
    if (typeof window === "undefined" || typeof history === "undefined" || typeof location === "undefined") return;
    this._history = true;
    this._onPop = () => {
      if (this.disposed) return;
      const route = new URL(location.href).searchParams.get("r") || "home";
      this.send("nav " + route);
    };
    window.addEventListener("popstate", this._onPop);
    const current = new URL(location.href).searchParams.get("r") || "";
    if (current.length > 0 && current !== "home") this.send("nav " + current);
  }

  _writeRoute(route, replace) {
    if (typeof history === "undefined" || typeof location === "undefined") return;
    const url = new URL(location.href);
    if (url.searchParams.get("r") === route) return;
    url.searchParams.set("r", route);
    const next = url.pathname + url.search;
    if (replace) history.replaceState({ nyx: route }, "", next);
    else history.pushState({ nyx: route }, "", next);
  }

  dispose() {
    const worker = this._worker;
    this._worker = null;
    if (worker) {
      try { worker.postMessage({ type: "stop" }); } catch { /* işçi kapanmış olabilir */ }
      worker.terminate();
    }
    if (this.listeners > 0) {
      this.parent.removeEventListener("click", this.onClick);
      this.parent.removeEventListener("keydown", this.onKey);
      this.parent.removeEventListener("input", this.onInput);
      this.parent.removeEventListener("change", this.onChange);
      this.listeners = 0;
    }
    if (this._onPop && typeof window !== "undefined") window.removeEventListener("popstate", this._onPop);
    this.disposed = true;
    if (this._cancelFetch) this._cancelFetch();
    const waiter = this.waiters.shift();
    if (waiter) waiter("stop");
    this.queue.length = 0;
    this.parent.replaceChildren();
    this.live.clear();
    return this.done;
  }
}
