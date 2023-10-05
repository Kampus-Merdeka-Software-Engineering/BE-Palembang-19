import express, { Router } from "express";
import { postCreateAkun } from "../controllers/akun.js";

const akunRouter = Router();

akunRouter.post("/", postCreateAkun);

export default akunRouter;