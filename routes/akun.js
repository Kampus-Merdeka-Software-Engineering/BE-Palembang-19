import express, { Router, response } from "express";
import { all, postCreateAkun } from "../controllers/akun.js";
import { postCreateLayanan } from "../controllers/layanan.js";

const akunRouter = Router();

akunRouter.post("/", postCreateLayanan);

akunRouter.get("/", all);

export default akunRouter;

