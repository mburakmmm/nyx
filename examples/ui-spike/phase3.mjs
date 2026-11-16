import { copyFileSync, readFileSync, unlinkSync } from "node:fs";
import { spawn } from "node:child_process";
import { fileURLToPath } from "node:url";
import { UiDriver, clearCookies, resolveUiUrl } from "./session.js";
import { escapeField } from "./mount.js";

const wasm = readFileSync(new URL("../ui/notes.wasm", import.meta.url));
const latin = Buffer.from(wasm).toString("latin1");
for (const banned of ["nyx.db", "nyx.auth", "nyx-ui-notes-secret", "ada-pass-9", "bor-pass-9"]) {
  if (latin.includes(banned)) throw new Error("wasm içinde yasak metin: " + banned);
}

let denied = false;
try {
  resolveUiUrl("https://evil.example/ui/rpc", "http://127.0.0.1:8766");
} catch (error) {
  denied = String(error.message).includes("köken");
}
if (!denied) throw new Error("cross origin was accepted");
const same = resolveUiUrl("http://nyx-ui.invalid/ui/rpc", "http://127.0.0.1:8766");
if (same.url !== "http://127.0.0.1:8766/ui/rpc") throw new Error(same.url);

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

  const opened = await driver.start(compiled);
  seen.push("OPEN " + opened);
  let pending = waitFor((frame) => frame.includes("N root/login") && !frame.includes("yükleniyor"));
  await pending;
  pending = waitFor((frame) => frame.includes("T root/name ada"));
  driver.send("input name ada");
  await pending;
  pending = waitFor((frame) => frame.includes("T root/password ada-pass-9") || frame.includes("ada-pass-9"));
  driver.send("input password ada-pass-9");
  await pending;
  pending = waitFor((frame) => frame.includes("T root/who ada"));
  driver.send("click login");
  const authed = await pending;
  if (authed.includes("ada-pass-9")) throw new Error("password stayed on screen");

  const note = "<script>alert(1)</script>";
  pending = waitFor((frame) => frame.includes("T root/draft"));
  driver.send("input draft " + escapeField(note));
  await pending;
  pending = waitFor((frame) => frame.includes("N root/n"));
  driver.send("click add");
  const listed = await pending;
  if (!listed.includes("<script>alert(1)</script>")) throw new Error("note text " + listed);

  const realFetch = globalThis.fetch;
  let delayed = false;
  globalThis.fetch = async (url, init) => {
    const body = init && init.body ? new TextDecoder().decode(init.body) : "";
    if (!delayed && body.includes("notes.list")) {
      delayed = true;
      driver.send("click logout");
      await new Promise((resolve) => setTimeout(resolve, 80));
      return new Response(JSON.stringify({
        ok: true,
        user: "ada",
        csrf: "stale",
        generation: 99,
        notes: [{ id: 9, body: "STALE-NOTE" }],
      }), { status: 200, headers: { "content-type": "application/json" } });
    }
    return realFetch(url, init);
  };
  const race = [];
  const finished = new Promise((resolve, reject) => {
    const timer = setTimeout(() => reject(new Error("iptal çerçevesi gelmedi\n" + race.join("\n---\n"))), 8000);
    driver.onFrame = (frame) => {
      race.push(frame);
      const cancelled = race.some((item) => item.includes("iptal") && !item.includes("STALE-NOTE"));
      const signedOut = race.some((item) => item.includes("N root/login") && !item.includes("T root/who"));
      if (cancelled && signedOut) {
        clearTimeout(timer);
        resolve();
      }
    };
  });
  driver.send("click reload");
  await finished;
  if (race.some((item) => item.includes("STALE-NOTE"))) throw new Error("stale body applied");
  globalThis.fetch = realFetch;

  driver.send("stop");
  await driver.done;
  console.log("phase3 ok");
} finally {
  try { process.kill(-child.pid, "SIGTERM"); } catch { child.kill("SIGTERM"); }
  await new Promise((resolve) => setTimeout(resolve, 300));
  for (const name of overlay) {
    try { unlinkSync(cache + "/" + name); } catch { /* cache already clean */ }
  }
}
