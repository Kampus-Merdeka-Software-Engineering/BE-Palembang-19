import express from "express";
import dotenv from "dotenv";
import sequelize from "./config/sequelize.js";
import { startSequelize } from "./utils/startSequelize.js";
import bodyParser from "body-parser";

import "./models/server.js";
import akunRouter from "./routes/akun.js";
import LayananRouter from "./routes/layanan.js";
import PaymentRouter from "./routes/payment.js";
import PengirimanRouter from "./routes/pengiriman.js";

dotenv.config();

const app = express();
const port = process.env.PORT;

// Gunakan body-parser
app.use(bodyParser.urlencoded());
app.use(bodyParser.raw());
app.use(bodyParser.json());

app.use(express.static("view"));

app.use("/api/akun", akunRouter);
app.use("/api/all", akunRouter);

app.use("/api/layanan", LayananRouter);
app.use("/api/allLayanan", LayananRouter);

app.use("/api/payment", PaymentRouter);

app.use("/api/pengiriman", PengirimanRouter);



startSequelize(sequelize);

app.listen(port, () => {
    console.log(`Server is running at port ${port}`);
});