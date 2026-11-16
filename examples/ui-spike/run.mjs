import fs from "node:fs";
import { runEcho } from "./host.js";

const wasm = fs.readFileSync(new URL("./echo.wasm", import.meta.url));
const line = process.argv[2] ?? "ada";
const result = await runEcho(wasm, line);
process.stdout.write(result.out);
if (result.err.length > 0) process.stderr.write(result.err);
process.exit(result.code);
