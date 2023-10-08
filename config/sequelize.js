import { Sequelize } from "sequelize";
import dotenv from "dotenv";

dotenv.config(); // Panggil dotenv.config() sebelum mengakses variabel lingkungan

const sequelize = new Sequelize(process.env.MYSQL_URL);

export default sequelize;