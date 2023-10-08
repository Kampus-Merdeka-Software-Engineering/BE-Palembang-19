import express, { Router, response } from "express";
import { postCreatePayment } from "../controllers/payment.js";

const PaymentRouter = Router();

PaymentRouter.post("/", postCreatePayment);

export default PaymentRouter;