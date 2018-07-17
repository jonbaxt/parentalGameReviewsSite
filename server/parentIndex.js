const express = require('express');
const bodyParser = require('body-parser');
const session = require('express-sessions');
const axios = require('axios');
const massive = require('massive');
const chalk = require('chalk');
require('dotenv').config();
const con = require('./controller');

const app = express();

const {
    SERVER_PORT,
    CONNECTION_STRING
} = process.env;

massive(CONNECTION_STRING).then( (mySQLDatabase) => {
    console.log(chalk.bgGreen.black('Database is connected'));
    app.set('db', mySQLDatabase)
});

app.use(express.static(`${__dirname}/../build`));
app.use( bodyParser.json());


app.get('/api/gamedata', con.getGameDataFromServer);

app.listen(SERVER_PORT, ()=> console.log(`Connect on port ${SERVER_PORT}`));