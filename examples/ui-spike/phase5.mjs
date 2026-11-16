import { copyFileSync, readFileSync, statSync, unlinkSync } from "node:fs";
import { spawn } from "node:child_process";
import { fileURLToPath } from "node:url";
import { UiDriver, clearCookies } from "./session.js";

const wasmPath = fileURLToPath(new URL("../ui/board.wasm", import.meta.url));
const wasm = readFileSync(wasmPath);
const bytes = statSync(wasmPath).size;
const latin = Buffer.from(wasm).toString("latin1");
for (const banned of ["nyx.db", "nyx.auth", "nyx-ui-notes-secret", "ada-pass-9", "bor-pass-9"]) {
  if (latin.includes(banned)) throw new Error("wasm içinde yasak metin: " + banned);
}

const repo = fileURLToPath(new URL("../..", import.meta.url));
const cache = process.env.HOME + "/.nox/pkg/mod/github.com/mburakmmm/nyx/19bfa13dde102d52fbd46d41d2e94bc3a0f92918";
const overlay = ["ui.nox", "ui_tree.nox", "ui_session.nox", "ui_net.nox", "ui_rpc.nox"];
for (const name of overlay) copyFileSync(repo + "/" + name, cache + "/" + name);

const child = spawn("noxc", ["run", "examples/ui/server.nox"], {
  cwd: repo,
  stdio: ["ignore", "pipe", "pipe"],
  detached: true,
  env: { ...process.env, PATH: process.env.HOME + "/.nox-lang/bin:" + (process.env.PATH || "") },
});
let serverLog = "";
try {
  await new Promise((resolve, reject) => {
    const timer = setTimeout(() => reject(new Error("sunucu açılmadı\n" + serverLog)), 20000);
    const take = (chunk) => {
      serverLog += chunk.toString();
      if (serverLog.includes("ui notes")) {
        clearTimeout(timer);
        resolve();
      }
    };
    child.stdout.on("data", take);
    child.stderr.on("data", take);
    child.on("exit", (code) => reject(new Error("sunucu çıktı " + code + "\n" + serverLog)));
  });

  clearCookies();
  const compiled = await WebAssembly.compile(wasm);
  const driver = new UiDriver(null, (message) => {
    throw new Error(message);
  }, "http://127.0.0.1:8766");
  const seen = [];
  function waitFor(pred) {
    return new Promise((resolve, reject) => {
      const timer = setTimeout(() => reject(new Error("çerçeve gelmedi\n" + seen.join("\n---\n") + "\n" + serverLog)), 8000);
      driver.onFrame = (frame) => {
        seen.push(frame);
        if (pred(frame)) {
          clearTimeout(timer);
          resolve(frame);
        }
      };
    });
  }

  const started = performance.now();
  const opened = await driver.start(compiled);
  const startupMs = performance.now() - started;
  seen.push("OPEN " + opened);
  let pending = waitFor((frame) => frame.includes("N root/login") && !frame.includes("yükleniyor"));
  await pending;
  pending = waitFor((frame) => frame.includes("T root/name bor"));
  driver.send("input name bor");
  await pending;
  pending = waitFor((frame) => frame.includes("bor-pass-9"));
  driver.send("input password bor-pass-9");
  await pending;
  pending = waitFor((frame) => frame.includes("T root/who bor"));
  const clicked = performance.now();
  driver.send("click login");
  const first = await pending;
  const loginMs = performance.now() - clicked;
  if (!first.includes("N root/fill meter")) throw new Error("meter yok");

  pending = waitFor((frame) => frame.includes("T root/draft pano-alfa"));
  driver.send("input draft pano-alfa");
  await pending;
  pending = waitFor((frame) => frame.includes("pano-alfa") && frame.includes("sayfa\\s1"));
  driver.send("click add");
  await pending;

  pending = waitFor((frame) => frame.includes("T root/draft pano-zeta"));
  driver.send("input draft pano-zeta");
  await pending;
  pending = waitFor((frame) => frame.includes("pano-zeta") && frame.includes("th id root/sheet/head sid 2"));
  driver.send("click add");
  const newest = await pending;
  if (!newest.includes("th id root/sheet/head sid 2")) throw new Error("id sort mark " + newest);

  let firstFrameAt = 0;
  const sortedAt = performance.now();
  pending = waitFor((frame) => {
    if (firstFrameAt === 0) firstFrameAt = performance.now();
    return frame.includes("th body root/sheet/head sbody 1") && !frame.includes("yükleniyor");
  });
  driver.send("click sbody");
  const sorted = await pending;
  const sortMs = performance.now() - sortedAt;
  const clickMs = firstFrameAt - sortedAt;
  if (sorted.includes("role=")) throw new Error("wire is not html");

  driver.send("stop");
  await driver.done;
  console.log("bytes " + bytes);
  console.log("startup_ms " + startupMs.toFixed(1));
  console.log("login_ms " + loginMs.toFixed(1));
  console.log("click_ms " + clickMs.toFixed(1));
  console.log("sort_ms " + sortMs.toFixed(1));
  console.log("phase5 ok");
} finally {
  try { process.kill(-child.pid, "SIGTERM"); } catch { child.kill("SIGTERM"); }
  await new Promise((resolve) => setTimeout(resolve, 300));
  for (const name of overlay) {
    try { unlinkSync(cache + "/" + name); } catch { /* cache already clean */ }
  }
}
