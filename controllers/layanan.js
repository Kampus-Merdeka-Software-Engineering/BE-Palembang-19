import express from "express";
import { createLayanan, getLayanan } from "../services/layanan.js";
import { httpStatusMessage } from "../constants/httpStatusMessage.js";

/**
 * 
 * @param {Express.Request} request 
 * @param {Express.Response} response 
 */
export const postCreateLayanan = async (request, response) => {
    const {jenis_layanan, harga } = request.body; 
    const layanan = await createLayanan(jenis_layanan, harga); 

    response.json({
        data: layanan,
        message: httpStatusMessage[response.status]
    });
};

export const allLayanan =  async (request, response) =>{
    const {jenis_layanan,harga} = request.body;
    const layanan = await getLayanan (jenis_layanan,harga);

    response.json({
        data: layanan,
        message: httpStatusMessage[response.status]
    });
};