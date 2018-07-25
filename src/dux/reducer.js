import axios from 'axios';

const initialState = {
    gameInfo: [],
    gameArtwork: [],
    gameScreenShots: [],

}

const GET_GAME_INFO_FROM_DB = 'GET_GAME_INFO_FROM_DB';
const GET_GAME_ARTWORK_FROM_DB = 'GET_GAME_ARTWORK_FROM_DB';
const GET_GAME_SCREENSHOTS_FROM_DB = 'GET_GAME_SCREENSHOTS_FROM_DB';

export function getGameInfoFromDb() {
    let gameData = axios.get('/api/getgamedatafromdb').then( (res) => {
        return res.data
    }).catch( err => console.log(err));
    return {
        type: GET_GAME_INFO_FROM_DB,
        payload: gameData
    }
}

export function gameGameArtworkFromDb() {
    let gameArt = axios.get('/api/getgameartworkfromdb').then( (res) => {
        return res.data;
    }).catch( err => console.log(err));
    return {
        type: GET_GAME_ARTWORK_FROM_DB,
        payload: gameArt
    }
}

export function getGameScreenshotsFromDb() {
    let gameShots = axios.get('/api/getgamescreenshotsfromdb').then( (res) => {
        return res.data;
    }).catch( (err) => console.log(err));
    return {
        type: GET_GAME_SCREENSHOTS_FROM_DB,
        payload: gameShots
    }
}

export default function reducer(state = initialState, action) {
    switch (action.type) {
        case GET_GAME_INFO_FROM_DB + '_FULFILLED': 
            return Object.assign({}, state, { gameInfo: action.payload });
        case GET_GAME_ARTWORK_FROM_DB + '_FULFILLED':
            return Object.assign({}, state, { gameArtwork: action.payload });
        case GET_GAME_SCREENSHOTS_FROM_DB + '_FULFILLED':
            return Object.assign({}, state, { gameScreenShots: action.payload });
        //----------------------------------DEFAULT RETURN----------------------------------
        default:
            return state;
    }
}