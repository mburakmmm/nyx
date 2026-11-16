import { spawn } from "node:child_process";
import { fileURLToPath, pathToFileURL } from "node:url";

const playwrightSpec = process.env.NYX_PLAYWRIGHT
  ? pathToFileURL(process.env.NYX_PLAYWRIGHT).href
  : "playwright";
const { chromium } = await import(playwrightSpec);

const port = process.env.NYX_UI_PORT || "8772";
const origin = "http://127.0.0.1:" + port;
const child = spawn("python3", ["-m", "http.server", port], {
  cwd: fileURLToPath(new URL("../..", import.meta.url)),
  stdio: ["ignore", "pipe", "pipe"],
});
let log = "";
const take = (chunk) => {
  log += chunk.toString();
};
child.stdout.on("data", take);
child.stderr.on("data", take);

try {
  await new Promise((resolve, reject) => {
    const timer = setTimeout(() => reject(new Error("statik sunucu açılmadı\n" + log)), 8000);
    const look = async () => {
      try {
        const response = await fetch(origin + "/examples/ui/index.html");
        if (response.ok) {
          clearTimeout(timer);
          resolve();
          return;
        }
      } catch { /* henüz dinlemiyor */ }
      setTimeout(look, 100);
    };
    look();
  });

  const browser = await chromium.launch({ headless: true });
  try {
    const page = await browser.newPage();
    await page.goto(origin + "/examples/ui/index.html");
    await page.waitForSelector("h1");
    const title = await page.locator("h1").innerText();
    if (title !== "Merhaba") throw new Error("başlık " + title);
    const raw = page.locator("[data-nyx-id='root/card/raw']");
    const text = await raw.innerText();
    const html = await raw.innerHTML();
    if (text !== "<script>alert(1)</script>") throw new Error("metin " + text);
    if (!html.includes("&lt;script&gt;")) throw new Error("html " + html);
    if (await page.locator("script").count() !== 1) throw new Error("ek script");

    await page.goto(origin + "/examples/ui/index.html?hata=1");
    await page.waitForSelector("#nyx-ui-error");
    const error = await page.locator("#nyx-ui-error").innerText();
    if (!error.includes("nyx ui protokolü uyumsuz")) throw new Error("uyumsuzluk " + error);
    if (await page.locator("#app").innerText() !== "") throw new Error("app boş değil");
  } finally {
    await browser.close();
  }
  console.log("ci-browser ok");
} finally {
  child.kill("SIGTERM");
}
