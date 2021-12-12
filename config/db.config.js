module.exports = {
    USER: "postgres",
    PASSWORD: "Alger0096",
    HOST: "localhost",
    PORT: 5432,
    DB: "citajmo.ba",
    dialect: "postgres",
    omitNull: true,
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
};
