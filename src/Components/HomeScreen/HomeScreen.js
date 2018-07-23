import React, { Component } from 'react';

import TitleArea from '../TitleArea/TitleArea';
import SearchBar from '../SearchBar/SearchBar';
import GameListItem from '../GameListItem/GameListItem';
import './HomeScreen.css';

class HomeScreen extends Component {

    render() {
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
                    <GameListItem />

                    <GameListItem />

                    <GameListItem />

                    <GameListItem />
                </div>
                <footer className='footerArea bordTemp'>
                    <h4>Site Created By: Jonathan Baxter</h4>
                </footer>
            </div>
        )
    }
}

export default HomeScreen;