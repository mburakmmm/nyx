import { readFileSync } from "node:fs";
import { Worker } from "node:worker_threads";
import { spawn } from "node:child_process";
import { fileURLToPath } from "node:url";
import { UiDriver } from "./session.js";

const wasm = readFileSync(new URL("../ui/load.wasm", import.meta.url));

function waitUntil(read, pred) {
  return new Promise((resolve, reject) => {
    const timer = setTimeout(() => reject(new Error("çerçeve gelmedi\n" + read().join("\n---\n"))), 8000);
    const look = () => {
      const found = read().find(pred);
      if (found) {
        clearTimeout(timer);
        resolve(found);
        return;
      }
      setTimeout(look, 5);
    };
    look();
  });
}

function totalOf(frames) {
  const frame = frames.find((item) => item.includes("T root/total "));
  if (!frame) return "";
  const line = frame.split("\n").find((item) => item.startsWith("T root/total "));
  return line ? line.slice("T root/total ".length) : "";
}

async function localBurn() {
  const seen = [];
  const driver = new UiDriver((frame) => seen.push(frame));
  await driver.start(wasm);
  if (!seen.some((frame) => frame.includes("T root/label hazır"))) throw new Error("yerel hazır yok");
  let ticks = 0;
  const timer = setInterval(() => { ticks += 1; }, 5);
  const started = performance.now();
  const pending = waitUntil(() => seen, (frame) => frame.includes("T root/total "));
  driver.send("click work");
  await pending;
  const ms = performance.now() - started;
  clearInterval(timer);
  driver.send("stop");
  await driver.done;
  return { ticks, ms, total: totalOf(seen) };
}

function openWorker() {
  const child = new Worker(new URL("./ui-worker.js", import.meta.url));
  const seen = [];
  const errors = [];
  child.on("message", (msg) => {
    if (msg.type === "frame") seen.push(msg.frame);
    if (msg.type === "error") errors.push(msg.message);
  });
  child.postMessage({ type: "start", source: wasm, origin: "" });
  return { child, seen, errors };
}

async function workerBurn() {
  const run = openWorker();
  await waitUntil(() => run.seen, (frame) => frame.includes("T root/label hazır"));
  let ticks = 0;
  const timer = setInterval(() => { ticks += 1; }, 5);
  const started = performance.now();
  const pending = waitUntil(() => run.seen, (frame) => frame.includes("T root/total "));
  run.child.postMessage({ type: "event", line: "click work" });
  await pending;
  const ms = performance.now() - started;
  clearInterval(timer);
  run.child.postMessage({ type: "stop" });
  await new Promise((resolve) => {
    const timer = setTimeout(resolve, 300);
    run.child.on("exit", () => {
      clearTimeout(timer);
      resolve();
    });
  });
  try { await run.child.terminate(); } catch { /* kapandı */ }
  if (run.errors.length > 0) throw new Error(run.errors.join("\n"));
  return { ticks, ms, total: totalOf(run.seen) };
}

async function stopDuringBurn() {
  const run = openWorker();
  await waitUntil(() => run.seen, (frame) => frame.includes("hazır"));
  run.child.postMessage({ type: "event", line: "click work" });
  await waitUntil(() => run.seen, (frame) => frame.includes("T root/label hesap"));
  let lived = false;
  const timer = setTimeout(() => { lived = true; }, 20);
  const exited = new Promise((resolve, reject) => {
    const limit = setTimeout(() => reject(new Error("işçi kapanmadı")), 2000);
    run.child.on("exit", () => {
      clearTimeout(limit);
      resolve();
    });
  });
  await run.child.terminate();
  await exited;
  await new Promise((resolve) => setTimeout(resolve, 40));
  clearTimeout(timer);
  if (!lived) throw new Error("ana döngü durdu");
  if (run.errors.some((item) => item.includes("deadlock"))) throw new Error("kilitlenme");
}

const local = await localBurn();
const worker = await workerBurn();
if (local.total.length === 0 || local.total !== worker.total) {
  throw new Error("sonuç " + local.total + " / " + worker.total);
}
if (local.ms < 50 || worker.ticks < local.ticks + 3) {
  throw new Error("işçi ana döngüyü açmadı yerel=" + local.ticks + "/" + local.ms.toFixed(1) + " işçi=" + worker.ticks + "/" + worker.ms.toFixed(1));
}
await stopDuringBurn();

const repo = fileURLToPath(new URL("../..", import.meta.url));
const { copyFileSync, unlinkSync } = await import("node:fs");
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
  const plain = await fetch("http://127.0.0.1:8766/ui/load.html");
  const isolated = await fetch("http://127.0.0.1:8766/ui/threads.html");
  if (!plain.ok || !isolated.ok) throw new Error("sayfa " + plain.status + " " + isolated.status);
  const plainCoop = plain.headers.get("cross-origin-opener-policy");
  const isoCoop = isolated.headers.get("cross-origin-opener-policy");
  const isoCoep = isolated.headers.get("cross-origin-embedder-policy");
  if (plainCoop) throw new Error("yük sayfasında COOP var: " + plainCoop);
  if (isoCoop !== "same-origin" || isoCoep !== "require-corp") {
    throw new Error("threads başlığı " + isoCoop + " " + isoCoep);
  }
  console.log("local_ticks " + local.ticks);
  console.log("local_ms " + local.ms.toFixed(1));
  console.log("worker_ticks " + worker.ticks);
  console.log("worker_ms " + worker.ms.toFixed(1));
  console.log("phase6 ok");
} finally {
  try { process.kill(-child.pid, "SIGTERM"); } catch { child.kill("SIGTERM"); }
  await new Promise((resolve) => setTimeout(resolve, 300));
  for (const name of overlay) {
    try { unlinkSync(cache + "/" + name); } catch { /* cache already clean */ }
  }
}
