import axios from 'axios';

const initialState = {
    gameInfo: 'no data',
    gameArtwork: [],
    gameScreenShots: [],
    gamePosts: [],
    tempGameSearchStore: 'empty',
}

const GET_GAME_INFO_FROM_DB = 'GET_GAME_INFO_FROM_DB';
const GET_GAME_ARTWORK_FROM_DB = 'GET_GAME_ARTWORK_FROM_DB';
const GET_GAME_SCREENSHOTS_FROM_DB = 'GET_GAME_SCREENSHOTS_FROM_DB';
const GET_GAME_POSTS_FROM_DB = 'GET_GAME_POSTS_FROM_DB';
const QUERY_GAME_TITLES = 'QUERY_GAME_TITLES';

export function getGameInfoFromDb() {
    let gameData = axios.get('/api/getgamedatafromdb').then( (res) => {
        return res.data
    }).catch( err => console.log(err));
    return {
        type: GET_GAME_INFO_FROM_DB,
        payload: gameData
    }
}

export function getGameArtworkFromDb() {
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

export function getGamePostsFromDb() {
    let gamePostArray = axios.get('/api/getgamepostsfromdb').then( (res) => {
        return res.data;
    }).catch( (err) => console.log(err));
    return {
        type: GET_GAME_POSTS_FROM_DB,
        payload: gamePostArray
    }
}

export function queryGameTitleFromIgdb(gameName) {
    let resultsFromWeb = axios.get(`/api/gamedata/byName/${gameName}`).then( (res) => { 
        return res.data;
    }).catch( err => console.log(err));
    return {
        type: QUERY_GAME_TITLES,
        payload: resultsFromWeb
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
        case GET_GAME_POSTS_FROM_DB + '_FULFILLED':
            return Object.assign({}, state, { gamePosts: action.payload });
        case QUERY_GAME_TITLES + '_FULFILLED':
            return Object.assign({}, state, { tempGameSearchStore: action.payload });
        //----------------------------------DEFAULT RETURN----------------------------------
        default:
            return state;
    }
}