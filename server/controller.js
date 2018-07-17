const axios = require('axios');
require('dotenv').config();

const API_KEY = process.env.API_KEY;

module.exports = {
    getGameDataFromServer: (req, res) => {
        axios.get("https://api-endpoint.igdb.com/games/?search=Sonic", {
            headers: {
              "user-key": API_KEY,
              Accept: "application/json"
            }
          })
          .then(response => {
            // Do work here
            console.log('The response data from database: ', response.data);
            res.status(200).send(response.data);
          })
          .catch(e => {
            console.log("error", e);
            res.status(400).send(e);
          });
    },
    gameDataById: (req, res) => {

    },
}