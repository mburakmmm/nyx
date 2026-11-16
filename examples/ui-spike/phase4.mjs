import { readFileSync } from "node:fs";
import { UiDriver } from "./session.js";
import { parseTree, readHost } from "./mount.js";

const compiled = await WebAssembly.compile(readFileSync(new URL("../ui/desk.wasm", import.meta.url)));
const driver = new UiDriver(null, (message) => {
  throw new Error(message);
});

const seen = [];
function waitFor(pred) {
  return new Promise((resolve, reject) => {
    const timer = setTimeout(() => reject(new Error("çerçeve gelmedi\n" + seen[seen.length - 1])), 8000);
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
parseTree(opened);
const boot = readHost(opened);
if (!boot.includes("listen")) throw new Error("history " + boot.join(","));
if (!opened.includes("T root/shell/main/title Ev")) throw new Error("home " + opened);
if (opened.includes("H push")) throw new Error("home pushed history");

let pending = waitFor((frame) => frame.includes("H push form"));
driver.send("click form");
let frame = await pending;
if (!frame.includes("T root/shell/main/title Form")) throw new Error("form " + frame);
if (!frame.includes("N root/shell/main/pages/text-panel/fields/count-col/count number")) throw new Error("number field");

pending = waitFor((frame) => frame.includes("başlık\\sgerekli"));
driver.send("click save");
frame = await pending;
if (!frame.includes("sayı\\sgerekli") || !frame.includes("onay\\sgerekli")) throw new Error("errors " + frame);
if (frame.includes("modal dialog root close 1")) throw new Error("invalid form opened the dialog");

pending = waitFor((frame) => frame.includes("T root/shell/main/pages/text-panel/fields/title-col/title Ada"));
driver.send("input title Ada");
await pending;
pending = waitFor((frame) => frame.includes("N root/shell/main/pages tabs pages"));
driver.send("click tab1");
frame = await pending;
if (!frame.includes("tabs pages root/shell/main - 1")) throw new Error("tab " + frame);
pending = waitFor((frame) => frame.includes("T root/shell/main/pages/text-panel/fields/count-col/count 3"));
driver.send("input count 3");
await pending;
pending = waitFor((frame) => frame.includes("select kind"));
driver.send("input kind archive");
await pending;
pending = waitFor((frame) => frame.includes("check agree"));
driver.send("input agree 1");
await pending;
pending = waitFor((frame) => frame.includes("modal dialog root close 1"));
driver.send("click save");
frame = await pending;
if (frame.includes("başlık\\sgerekli")) throw new Error("error stayed");
if (!frame.includes("T root/dialog/saved Ada")) throw new Error("saved " + frame);

pending = waitFor((frame) => frame.includes("modal dialog root close 0"));
driver.send("click close");
frame = await pending;
if (frame.includes("modal dialog root close 1")) throw new Error("dialog stayed open");

pending = waitFor((frame) => frame.includes("T root/shell/main/title Ev"));
driver.send("nav home");
frame = await pending;
if (frame.includes("H push")) throw new Error("back pushed " + readHost(frame).join(","));
if (!frame.includes("H listen")) throw new Error("listen dropped");

pending = waitFor((frame) => frame.includes("T root/shell/main/pages/text-panel/fields/title-col/title Ada"));
driver.send("nav form");
frame = await pending;
if (!frame.includes("T root/shell/main/pages/text-panel/fields/count-col/count 3")) throw new Error("forward lost the count");
if (!frame.includes("check agree root/shell/main/pages/pick-panel agree 1")) throw new Error("forward lost the check");

driver.send("stop");
await driver.done;
console.log("phase4 ok");
