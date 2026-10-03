import express, { Request, Response } from "express";

const app = express();
const port: number = Number(process.env.PORT ?? 3000);

app.get("/", (_req: Request, res: Response) => {
  res.type("text/plain").send("bloated-app is running\n");
});

app.get("/health", (_req: Request, res: Response) => {
  res.json({ status: "ok", node: process.version });
});

app.listen(port, () => {
  console.log(`bloated-app listening on port ${port}`);
});
