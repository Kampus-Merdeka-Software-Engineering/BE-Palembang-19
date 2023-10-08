import pengiriman from "../models/pengiriman.js";


export const createPengiriman = async (resi,id_layanan,nama_pengirim,alamat_pengirim,nohp_pengirim,nama_penerima,alamat_penerima,nohp_penerima,tipe_barang,berat_barang,total_bayar) => {
  return await pengiriman.create({resi,id_layanan,nama_pengirim,alamat_pengirim,nohp_pengirim,nama_penerima,alamat_penerima,nohp_penerima,tipe_barang,berat_barang,total_bayar});
};