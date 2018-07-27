const axios = require('axios');
require('dotenv').config();

const API_KEY = process.env.API_KEY;

module.exports = {
  getGamesByName: (req, res) => {
    const userEntry = req.params.gameName;
    axios.get(`https://api-endpoint.igdb.com/games/?search=${userEntry}&fields=*`, {
      headers: {
        "user-key": API_KEY,
        Accept: "application/json"
      }
    })
      .then(response => {
        // Do work here
        // console.log('The response data from database: ', response.data);
        res.status(200).send(response.data);
      })
      .catch(e => {
        console.log("error", e);
        res.status(400).send(e);
      });
  },
  getGameDataFromServer: (req, res) => {
    axios.get("https://api-endpoint.igdb.com/games/?search=Sonic", {
      headers: {
        "user-key": API_KEY,
        Accept: "application/json"
      }
    })
      .then(response => {
        // Do work here
        // console.log('The response data from database: ', response.data);
        res.status(200).send(response.data);
      })
      .catch(e => {
        console.log("error", e);
        res.status(400).send(e);
      });
  },
  getGameDataFromServerV2: (req, res) => {
    axios.get("https://api-endpoint.igdb.com/games/?search=Sonic&fields=*", {
      headers: {
        "user-key": API_KEY,
        Accept: "application/json"
      }
    })
      .then(response => {
        // Do work here
        // console.log('The response data from database: ', response.data);
        res.status(200).send(response.data);
      })
      .catch(e => {
        console.log("error", e);
        res.status(400).send(e);
      });
  },
  sonicGames: (req, res) => {
    axios.get(`https://api-endpoint.igdb.com/games/89922,5165,2174,24346,9476,56739,23826,78430,50924,7862?fields=*`, {
      headers: {
        "user-key": API_KEY,
        Accept: "application/json"
      }
    })
      .then(response => {
        // Do work here
        // console.log('The response data from database: ', response.data);
        res.status(200).send(response.data);
      })
      .catch(e => {
        console.log("error", e);
        res.status(400).send(e);
      });
  },
  gameDataById: (req, res) => {
    const gameId = req.params.id;
    axios.get(`https://api-endpoint.igdb.com/games/${gameId}?fields=*`, {
      headers: {
        "user-key": API_KEY,
        Accept: "application/json"
      }
    })
      .then(response => {
        // Do work here
        // console.log('The response data from database: ', response.data);
        res.status(200).send(response.data);
      })
      .catch(e => {
        console.log("error", e);
        res.status(400).send(e);
      });
  },
  gameCallByWhole: (req, res) => {
    axios.get(`https://api-endpoint.igdb.com/games/`, {
      headers: {
        "user-key": API_KEY,
        Accept: "application/json"
      }
    })
      .then(response => {
        // Do work here
        // console.log('The response data from database: ', response.data);
        res.status(200).send(response.data);
      })
      .catch(e => {
        console.log("error", e);
        res.status(400).send(e);
      });
  },
  getSavedGameInfoFromIGDB: (req, res)=> {
    const dbInstance = req.app.get('db');

    dbInstance.get_saved_game_info().then( (response) => {
      res.status(200).send(response);
    }).catch( (err)=> res.status(400).send(err));
  },
  getGameArtwork: (req, res)=>{
    const dbInstance = req.app.get('db');

    dbInstance.get_artwork().then( (response)=>{
      res.status(200).send(response);
    }).catch( (err) => res.status(400).send(err));
  },
  getGameScreenShots: (req, res)=> {
    const dbInstance = req.app.get('db');

    dbInstance.get_screenshots().then( (response) => {
      res.status(200).send(response);
    }).catch( (err) => res.status(400).send(err));
  },
  getGamePosts: (req, res)=> {
    const dbInstance = req.app.get('db');

    dbInstance.get_gamereview_posts().then( (response) => {
      res.status(200).send(response);
    }).catch( (err) => res.status(400).send(err));
  },
}