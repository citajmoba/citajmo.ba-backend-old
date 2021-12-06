module.exports = {
    USER: "postgres",
    PASSWORD: "Oran0098",
    HOST: "localhost",
    port: 5432,
    DB: "citaj.ba.new",
    dialect: "postgres",
    omitNull: true,
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
};
