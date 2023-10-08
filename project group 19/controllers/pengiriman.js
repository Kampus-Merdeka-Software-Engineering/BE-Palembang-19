import express from "express";
import { createPengiriman } from "../services/pengiriman.js";
import { httpStatusMessage } from "../constants/httpStatusMessage.js";

/**
 * 
 * @param {Express.Request} request 
 * @param {Express.Response} response 
 */
export const postCreatePengiriman = async (request, response) => {
    const {resi,id_layanan,nama_pengirim,alamat_pengirim,nohp_pengirim,nama_penerima,alamat_penerima,nohp_penerima,tipe_barang,berat_barang,total_bayar} = request.body; 
    const pengiriman = await createPengiriman (resi,id_layanan,nama_pengirim,alamat_pengirim,nohp_pengirim,nama_penerima,alamat_penerima,nohp_penerima,tipe_barang,berat_barang,total_bayar); 

    response.json({
        data: pengiriman,
        message: httpStatusMessage[response.status]
    });
};