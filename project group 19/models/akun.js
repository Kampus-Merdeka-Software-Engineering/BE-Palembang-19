import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";


const Akun = sequelize.define("Akun", {
    username:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true,
            len: [3, 100]
        }
    },
    password:{
        type: DataTypes.STRING, 
        allowNull: false,
        validate: {
        notEmpty: true,
        len: [6, 255], 
        }
    },
    role:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true
        }
    }
});

export default Akun;