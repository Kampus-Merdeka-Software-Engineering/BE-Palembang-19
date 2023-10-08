import Akun from "../models/akun.js";

export const createAkun = async (username, password, role) => {
  return await Akun.create({username,password,role});
};

export const getAkun = async (username, password, role) => {
  return await Akun.findAll({username,password,role});
};