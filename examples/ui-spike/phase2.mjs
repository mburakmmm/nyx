import { readFileSync } from "node:fs";
import { UiDriver, EVENT_URL } from "./session.js";
import { escapeField, splitFrames, FRAME_LIMIT } from "./mount.js";

if (EVENT_URL !== "http://nyx-ui.invalid/event") throw new Error("event url");
if (escapeField("a b") !== "a\\sb") throw new Error("escape");
if (escapeField("") !== "\\z") throw new Error("empty escape");

let limited = false;
try {
  splitFrames(new Array(FRAME_LIMIT + 1).fill("nyx-ui 1\n.\n").join(""));
} catch (error) {
  limited = String(error.message).includes("sınırı");
}
if (!limited) throw new Error("frame limit");

const compiled = await WebAssembly.compile(readFileSync(new URL("../ui/counter.wasm", import.meta.url)));

function frameAfter(driver) {
  return new Promise((resolve) => {
    driver.onFrame = (frame) => resolve(frame);
  });
}

const first = new UiDriver();
const second = new UiDriver();
const firstOpen = await first.start(compiled);
const secondOpen = await second.start(compiled);
if (!firstOpen.includes("Sayaç\\s0")) throw new Error("first " + firstOpen);
if (!secondOpen.includes("Sayaç\\s0")) throw new Error("second " + secondOpen);

let pending = frameAfter(first);
first.send("click inc");
let frame = await pending;
if (!frame.includes("Sayaç\\s1")) throw new Error("count " + frame);
if (secondOpen.includes("Sayaç\\s1")) throw new Error("sessions share state");

pending = frameAfter(first);
first.send("input name " + escapeField("a b"));
frame = await pending;
if (!frame.includes("T root/echo a\\sb")) throw new Error("echo " + frame);
if (!frame.includes("T root/field a\\sb")) throw new Error("field " + frame);

pending = frameAfter(first);
first.send("click toggle");
frame = await pending;
if (frame.includes("N root/extra ")) throw new Error("conditional stayed");

pending = frameAfter(first);
first.send("click swap");
frame = await pending;
const atA = frame.indexOf("N root/row/a ");
const atB = frame.indexOf("N root/row/b ");
if (atA < 0 || atB < 0 || atB > atA) throw new Error("order " + frame);

const queued = first.queue.length;
first.disposed = true;
first.send("click inc");
if (first.queue.length !== queued) throw new Error("disposed session took an event");

second.send("stop");
await second.done;
console.log("phase2 ok");
