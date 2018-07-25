import React, { Component } from 'react';
import { connect } from 'react-redux';
import { getGameInfoFromDb, getGameArtworkFromDb, getGameScreenshotsFromDb } from '../../dux/reducer';

import TitleArea from '../TitleArea/TitleArea';
import SearchBar from '../SearchBar/SearchBar';
import GameListItem from '../GameListItem/GameListItem';
import './HomeScreen.css';

class HomeScreen extends Component {

    componentDidMount() {
        // if (this.props.gameInfo.length === 0) {
            this.props.getGameInfoFromDb();
        // }
        if (this.props.gameArtwork.length === 0) {
            this.props.getGameArtworkFromDb();
        }
        if (this.props.gameScreenShots.length === 0) {
            this.props.getGameScreenshotsFromDb();
        }
    }

    render() {
        let gamelist = ''
        if (this.props.gameInfo.length !== 0) {
            gamelist = this.props.gameInfo.map((element, index) => {
                return <div key={element.id}><GameListItem gameIdNumber={element.id} /></div>
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
                <div className='gamesDisplayArea bordTemp'>
                    {gamelist}

                    {/* <GameListItem /> */}

                    {/* <GameListItem /> */}

                    {/* <GameListItem /> */}

                    {/* <GameListItem /> */}
                </div>
                <footer className='footerArea bordTemp'>
                    <h4>Site Created By: Jonathan Baxter</h4>
                </footer>
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