import express, { Router, response } from "express";
import { allLayanan, postCreateLayanan } from "../controllers/layanan.js";

const LayananRouter = Router();

LayananRouter.post("/", postCreateLayanan);

LayananRouter.get("/", allLayanan);

export default LayananRouter;