import express from "express";
import { createAkun, getAkun } from "../services/akun.js";
import { httpStatusMessage } from "../constants/httpStatusMessage.js";

/**
 * 
 * @param {Express.Request} request 
 * @param {Express.Response} response 
 */
export const postCreateAkun =  async (request, response) =>{
    const {username, password, role} = request.body;
    const akun = await createAkun  (username, password, role);

    response.json({
        data: akun,
        message: httpStatusMessage[response.status]
    });
};

export const all =  async (request, response) =>{
    const {username, password, role} = request.body;
    const akun = await getAkun (username, password, role);

    response.json({
        data: akun,
        message: httpStatusMessage[response.status]
    });
};