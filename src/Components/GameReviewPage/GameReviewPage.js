import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { getGameInfoFromDb, getGameArtworkFromDb, getGameScreenshotsFromDb } from '../../dux/reducer';
import './GameReviewPage.css';
const _ = require('lodash');

class GameReviewPage extends React.Component {

    componentDidMount(){
        if(this.props.gameInfo === 'no data'){
            this.props.getGameInfoFromDb();
            this.props.getGameArtworkFromDb();
            this.props.getGameScreenshotsFromDb();
        }
    }
    render() {
        let gameId = this.props.match.params.id - 1;
        let screenShots = _.findIndex(this.props.gameScreenShots, (current)=>  current.gameinfo_id === gameId+1) !== -1 ? 'Go to ScreenShot Component' : 'No Screenshots Available';
        let gameArt = _.findIndex( this.props.gameArtwork, (current)=> current.gameinfo_id === gameId+1 ) !== -1 ? 'Go to Artwork Component' : <p>No artwork stored for this title.</p>
        // (this.props.gameScreenShots.gameinfo_id, gameId+1);
        //   this.props.gameScreenShots.find((val)=> val === gameId+1);
        // if(this.props.gameScreenShots.length !== 0){
        // screenShots = this.props.gameScreenShots.map((elem)=> elem);
        // }
        console.log(screenShots);
        return (
            <div className='reviewPageMain'>
                <Link to='/'>Back to Home Page</Link>
                <header className='gameTopBlurb' >
                    <h1>{this.props.gameInfo[gameId].game_name}</h1>
                    <h2>IGDB Game Rating: {this.props.gameInfo[gameId].igdb_rating}</h2>
                    <h2>Parental Game Overall Rating:<span role='image'>🔥🔥🔥🔥🔥</span> </h2>
                    <span>
                    <img src={'http://' + this.props.gameInfo[gameId].cover_img_url } alt='' /></span>
                <h3>Game Summary</h3>
                <p>{this.props.gameInfo[gameId].summary}</p>

                <h3>Game ScreenShots</h3>
                {screenShots}

                <h3>Game Art</h3>
                {gameArt}
                </header>
                <p>Review Page Component</p>
                
                <p>This will contain posts made about the specific game.</p>
            </div>
        )
    }
}
let mapStateToProps = (state) => {
    return {
        gameInfo: state.gameInfo,
        gameArtwork: state.gameArtwork,
        gameScreenShots: state.gameScreenShots
    }
}
export default connect(mapStateToProps, { getGameInfoFromDb, getGameArtworkFromDb, getGameScreenshotsFromDb })(GameReviewPage);