import payment from "../models/payment.js";


export const createPayment = async (resi,tipe_payment,status_payment) => {
  return await payment.create({resi,tipe_payment,status_payment});
};