import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { getGameInfoFromDb, getGameArtworkFromDb, getGameScreenshotsFromDb } from '../../dux/reducer';

import TitleArea from '../TitleArea/TitleArea';
import SearchBar from '../SearchBar/SearchBar';
import GameListItem from '../GameListItem/GameListItem';
import './HomeScreen.css';

class HomeScreen extends Component {

    componentDidMount() {
        if (this.props.gameInfo === 'no data') {
            this.props.getGameInfoFromDb();
        }
        if (this.props.gameArtwork.length === 0) {
            this.props.getGameArtworkFromDb();
        }
        if (this.props.gameScreenShots.length === 0) {
            this.props.getGameScreenshotsFromDb();
        }
    }

    render() {
        let gamelist = ''
        if (this.props.gameInfo !== 'no data') {
            gamelist = this.props.gameInfo.map((element, index) => {
                return <div key={element.id}><Link style={{ textDecorationLine: 'none', color: 'black' }} to={`/reviewPage/${element.id}`}><GameListItem gameInf={element} /></Link></div>
            })
        }
        return (
            <div className='homeScreenMain' >
                <div className='searchBarArea'>
                    <div className='siteTitleArea'>
                        <TitleArea />
                    </div>
                    <div className='searchBarInnerArea'>
                        <SearchBar />
                    </div>
                </div>
                <div className='gamesDisplayArea'>
                    <h2>Games with Reviews from our parent contributors</h2>
                    {gamelist}
                </div>
            </div>
        )
    }
}
function mapStateToProps(state) {
    return {
        gameInfo: state.gameInfo,
        gameArtwork: state.gameArtwork,
        gameScreenShots: state.gameScreenShots
    }
}
let mapDispatchToProps = {
    getGameInfoFromDb,
    getGameArtworkFromDb,
    getGameScreenshotsFromDb
}
export default connect(mapStateToProps, mapDispatchToProps)(HomeScreen);