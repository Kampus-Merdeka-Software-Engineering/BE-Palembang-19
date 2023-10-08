import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";
import Pengiriman from "./pengiriman.js"; 

const Payment = sequelize.define("Payment", {
    id_payment: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true, 
        allowNull: false,
    },
    resi: {
        type: DataTypes.STRING,
        primaryKey: true,
        allowNull: false,
        validate: {
            notEmpty: true,
        },
    },
    tipe_payment: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
            len: [3, 100],
        },
    },
    status_payment: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
        },
    },
});

// relasi Payment dengan Pengiriman 
Payment.belongsTo(Pengiriman, { foreignKey: 'resi' });

export default Payment;