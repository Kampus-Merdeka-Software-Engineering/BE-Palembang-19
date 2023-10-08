import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";

const Layanan = sequelize.define("Layanan", {
    id_layanan: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true, 
        allowNull: false,
    },
    jenis_layanan: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
            len: [3, 100],
        },
    },
    harga: {
        type: DataTypes.INTEGER, 
        allowNull: false,
    },
});

export default Layanan;
