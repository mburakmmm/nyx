// Nox wasm32-freestanding hostu. ABI sürüm 1.
// write görünümü çağrı bitmeden kopyalanır. read yalnız verilen dilime yazar.

const ABI = 1;

export class NoxExit extends Error {
  constructor(code) {
    super("nox exit " + code);
    this.code = code;
  }
}

export async function runEcho(wasmBytes, line) {
  const encoder = new TextEncoder();
  const decoder = new TextDecoder();
  const payload = encoder.encode(line.endsWith("\n") ? line : line + "\n");
  let offset = 0;
  let memory = null;
  const out = [];
  const err = [];
  const imports = {
    nox_host: {
      write(fd, ptr, len) {
        const copy = new Uint8Array(memory.buffer, ptr, len).slice();
        const text = decoder.decode(copy);
        if (fd === 2) err.push(text);
        else out.push(text);
        return len;
      },
      read(fd, ptr, len) {
        if (fd !== 0 || offset >= payload.length || len <= 0) return 0;
        const n = Math.min(len, payload.length - offset);
        new Uint8Array(memory.buffer, ptr, n).set(payload.subarray(offset, offset + n));
        offset += n;
        return n;
      },
      clock_ms(kind) {
        const ms = kind === 0 ? Date.now() : performance.now();
        return BigInt(Math.trunc(ms));
      },
      random_fill(ptr, len) {
        crypto.getRandomValues(new Uint8Array(memory.buffer, ptr, len));
      },
      sleep_ms() {},
      exit(code) {
        throw new NoxExit(code);
      },
    },
  };
  const compiled = await WebAssembly.instantiate(wasmBytes, imports);
  const instance = compiled.instance;
  memory = instance.exports.memory;
  const version = instance.exports.nox_host_abi_version();
  if (version !== ABI) {
    throw new Error("nox_host ABI " + version + ", host " + ABI);
  }
  let code = 0;
  try {
    instance.exports._start();
  } catch (error) {
    if (error instanceof NoxExit) code = error.code;
    else throw error;
  }
  return { code: code, out: out.join(""), err: err.join("") };
}
