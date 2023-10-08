import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";
import Layanan from "./layanan.js"; 

const Pengiriman = sequelize.define("Pengiriman", {
    resi: {
        type: DataTypes.STRING,
        primaryKey: true,
        allowNull: false,
        validate: {
            notEmpty: true,
        },
    },
    id_layanan: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    nama_pengirim: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
            len: [3, 100],
        },
    },
    alamat_pengirim: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
        },
    },
    nohp_pengirim: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
        },
    },
    nama_penerima: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
            len: [3, 100],
        },
    },
    alamat_penerima: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
        },
    },
    nohp_penerima: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
        },
    },
    tipe_barang: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
        },
    },
    berat_barang: {
        type: DataTypes.INTEGER, 
        allowNull: false,
    },
    total_bayar: {
        type: DataTypes.INTEGER, 
        allowNull: false,
    },
});

//relasi antara Pengiriman dan Layanan
Pengiriman.belongsTo(Layanan, { foreignKey: 'id_layanan' });

export default Pengiriman;