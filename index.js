const express = require("express");
const app = express();
const cors = require("cors");
const args = require('minimist')(process.argv.slice(2));
const pgtools = require("pgtools");
const config = require("./config/db.config.js");

let corsOptions = {
    origin: "http://localhost:3000"
  };

//middleware
app.use(cors(corsOptions));

//database
(async () => {
  // create new database if requested
  if (args.hasOwnProperty('createDB')) {
    await pgtools.createdb(
        {
          user: config.USER, 
          host: config.HOST, 
          password: config.PASSWORD, 
          port: config.PORT 
        },
        config.DB,
        function(err, res) {
          if (err) {
            console.error(err);
            process.exit(-1);
          }
          console.log(res);
      })
  };
  // create tables
  const db = require("./models");
  //sync the db
  await db.sequelize.sync();
  await db.sequelize.query('CREATE EXTENSION IF NOT EXISTS unaccent;', {raw: true});
  // seed the database if requested
  if (args.hasOwnProperty('seedDB')) {require("./config/seed_data")(db)};
})();

// parse requests of content-type - application/json
app.use(express.json()); //req.body

// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));


//ROUTES//

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to citajba!" });
});

// routes
require('./routes/auth.routes')(app);
require('./routes/access.routes')(app);
require('./routes/book.crud.routes')(app);
require('./routes/questions.crud.routes')(app);


// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});