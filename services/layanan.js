import Layanan from "../models/layanan.js";

export const createLayanan = async (jenis_layanan,harga) => {
  return await Layanan.create({jenis_layanan,harga});
};

export const getLayanan = async (jenis_layanan,harga) => {
  return await Layanan.findAll({jenis_layanan,harga});
};