import Fastify from "fastify";

const app = Fastify({ logger: false });
const port = Number(process.env.PORT ?? "3102");

app.get("/ping", async () => ({ pong: true }));

app.post("/echo", async (req) => {
  const body = req.body ?? {};
  return { msg: typeof body.msg === "string" ? body.msg : "" };
});

await app.listen({ port, host: "0.0.0.0" });
