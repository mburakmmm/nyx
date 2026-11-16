// Wasm bu işçidedir. DOM burada yoktur.
// Ana iş parçacığı çerçeveyi alır, olayı yollar. Bekleme eşzamanlı değildir.

import { UiDriver } from "./session.js";

let post = () => {};
let driver = null;

function emit(msg) {
  post(msg);
}

function attach(origin) {
  driver = new UiDriver(
    (frame) => emit({ type: "frame", frame }),
    (message) => emit({ type: "error", message }),
    origin || ""
  );
}

async function handle(msg) {
  if (!msg || !msg.type) return;
  if (msg.type === "start") {
    attach(msg.origin);
    try {
      await driver.start(msg.source);
    } catch (error) {
      emit({ type: "error", message: String(error && error.message ? error.message : error) });
    }
    return;
  }
  if (msg.type === "event" && driver) {
    driver.send(msg.line);
    return;
  }
  if (msg.type === "stop" && driver) {
    driver.disposed = true;
    if (driver._cancelFetch) driver._cancelFetch();
    const waiter = driver.waiters.shift();
    if (waiter) waiter("stop");
    emit({ type: "done" });
  }
}

if (typeof WorkerGlobalScope !== "undefined" && globalThis instanceof WorkerGlobalScope) {
  post = (msg) => self.postMessage(msg);
  self.onmessage = (event) => {
    handle(event.data);
  };
} else {
  const { parentPort } = await import("node:worker_threads");
  post = (msg) => parentPort.postMessage(msg);
  parentPort.on("message", (msg) => {
    handle(msg);
  });
}
