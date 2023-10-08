import express, { Router, response } from "express";
import { postCreatePengiriman } from "../controllers/pengiriman.js";

const PengirimanRouter = Router();

PengirimanRouter.post("/", postCreatePengiriman);

export default PengirimanRouter;