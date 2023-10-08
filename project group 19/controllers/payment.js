import express from "express";
import { createPayment } from "../services/payment.js";
import { httpStatusMessage } from "../constants/httpStatusMessage.js";


/**
 * 
 * @param {Express.Request} request 
 * @param {Express.Response} response 
 */
export const postCreatePayment = async (request, response) => {
    const {resi,tipe_payment,status_payment} = request.body; 
    const payment = await createPayment(resi,tipe_payment,status_payment); 

    response.json({
        data: payment,
        message: httpStatusMessage[response.status]
    });
};