import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { getGameInfoFromDb, getGameArtworkFromDb, getGameScreenshotsFromDb, getGamePostsFromDb } from '../../dux/reducer';
import ScreenShotSlideshow from '../ScreenShotSlideshow/ScreenShotSlideshow';
import ArtworkSlideshow from '../ArtworkSlideshow/ArtworkSlideshow';
import Post from '../Post/Post';
import Rating from '../Rating/Rating';
import './GameReviewPage.css';
const _ = require('lodash');

class GameReviewPage extends React.Component {
    constructor() {
        super();
        this.state = {
            userName: '',
            userImage: '',
            userReview: '',
            userRating: 0,
            userRecommendation: ''
        }
        this.handleSubmission = this.handleSubmission.bind( this );
    }
    componentDidMount() {
        if (this.props.gameInfo === 'no data') {
            this.props.getGameInfoFromDb();
            this.props.getGameArtworkFromDb();
            this.props.getGameScreenshotsFromDb();
            this.props.getGamePostsFromDb();
        }
    }
    handleUserNameChange = (e) => {
        this.setState({ userName: e });
    }
    handleUserImageChange = (e) => {
        this.setState({ userImage: e });
    }
    handleUserReviewChange = (e) => {
        this.setState({ userReview: e });
    }
    handleUserRatingChange = (e) => {
        this.setState({ userRating: e });
    }
    handleUserRecommendationChange = (e) => {
        this.setState({ userRecommendation: e });
    }
    handleSubmission() {
        console.log('submit to database')
    }
    render() {
        let gameId = this.props.match.params.id - 1;
        let screenShots = _.findIndex(this.props.gameScreenShots, (current) => current.gameinfo_id === gameId + 1) !== -1 ? <div className='sliderBox'><ScreenShotSlideshow gameId={gameId + 1} /></div> : 'No Screenshots Available';
        let gameArt = _.findIndex(this.props.gameArtwork, (current) => current.gameinfo_id === gameId + 1) !== -1 ? <div className='sliderBox'><ArtworkSlideshow gameId={gameId + 1} /></div> : <p>No artwork stored for this title.</p>
        let postsArray = this.props.gamePosts.map((element) => {
            if (gameId + 1 === element.gameinfo_id) {
                return <div key={element.post_id} className='postSpacing' ><Post postId={element.post_id} /></div>
            } else {
                return '';
            }
        });
        let overallRating = 0;
        if (this.props.gamePosts.length !== 0) {
            let scores = this.props.gamePosts.filter(el => gameId + 1 === el.gameinfo_id).map((element) => element.user_rating)
            for (let i = 0; i < scores.length; i++) {
                overallRating = overallRating + scores[i];
            }
            overallRating = overallRating / scores.length;
            let t = String(overallRating);
            let temp = t.charAt(0);
            let saved = Number(temp);
            overallRating = saved;
        }
        let previewImage = this.state.userImage === '' ? 'http://saveabandonedbabies.org/wp-content/uploads/2015/08/default.png' : this.state.userImage;
        return (
            <div className='reviewPageMain'>
                <Link to='/'>Back to Home Page</Link>
                <header className='gameTopBlurb' >
                    <h1>{this.props.gameInfo[gameId].game_name}</h1>
                    <h2>IGDB Game Rating: {this.props.gameInfo[gameId].igdb_rating}</h2>
                    <h2>Parental Game Overall Rating: <Rating rate={overallRating} /> </h2>
                    <span>
                        <img src={'http://' + this.props.gameInfo[gameId].cover_img_url} alt='' /></span>
                    <h3>Game Summary</h3>
                    <p>{this.props.gameInfo[gameId].summary}</p>
                    <h3>Game ScreenShots</h3>
                    {screenShots}
                    <h3>Game Art</h3>
                    {gameArt}
                </header>

                <section className='secSpace' >
                    <h1 className='hSpace'>New Review</h1>
                    <article className='gameTopBlurb'>
                        <div className='flexRow' style={{ justifyContent: 'center', alignItems: 'center' }} >
                            <div className='flexColumn' >
                                <h3 id='newHeaderStyle' >Name of Parent:</h3>
                                <input type='text' placeholder='Whats your name?' value={this.state.userName} onChange={(e) => this.handleUserNameChange(e.target.value)} />
                                <h3 id='newHeaderStyle' >Image Icon:</h3>
                                <input type='text' placeholder='Paste a picture url here' value={this.state.userImage} onChange={(e) => this.handleUserImageChange(e.target.value)} />
                                <h3 id='newHeaderStyle' >Your Review:</h3>
                                <textarea type='text' rows='5' cols='40' placeholder='This game is great because...' value={this.state.userReview} onChange={(e) => this.handleUserReviewChange(e.target.value)} />
                                <h3 id='newHeaderStyle' >Your Rating:</h3>
                                <input type='text' value={this.state.userRating} onChange={(e) => this.handleUserRatingChange(e.target.value)} />
                                <h3 id='newHeaderStyle' >Your Recommendation:</h3>
                                <input type='text' placeholder='You should get this game for your kid' value={this.state.userRecommendation} onChange={(e) => this.handleUserRecommendationChange(e.target.value)} />
                            </div>
                            <div className='flexColumn'>
                                <img src={previewImage} alt='' style={{ width: '90%', margin: '0 auto' }} />
                                <button 
                                className='submitButton' 
                                style={{margin: '0 auto'}}
                                onClick={()=> this.handleSubmission() } >Post to Site</button>
                            </div>
                        </div>
                    </article>
                </section>

                <section className='secSpace'>
                    <h1 className='hSpace'>Reviews</h1>
                    {postsArray}
                </section>

            </div>
        )
    }
}
let mapStateToProps = (state) => {
    return {
        gameInfo: state.gameInfo,
        gameArtwork: state.gameArtwork,
        gameScreenShots: state.gameScreenShots,
        gamePosts: state.gamePosts
    }
}
export default connect(mapStateToProps, { getGameInfoFromDb, getGameArtworkFromDb, getGameScreenshotsFromDb, getGamePostsFromDb })(GameReviewPage);