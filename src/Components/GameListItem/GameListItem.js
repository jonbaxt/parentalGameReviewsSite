import React from 'react';
import { connect } from 'react-redux';
import Rating from '../Rating/Rating';
import './GameListItem.css';

function GameListItem(props) {
    let rating = props.gameInf.igdb_rating !== null ? props.gameInf.igdb_rating : 'No rating';
    let coverImage = props.gameInf.cover_img_url ? 
    <img src={'http://' + props.gameInf.cover_img_url} alt='' /> : '';
    let overallRating = 0;
    if(props.gamePosts.length !== 0){
        let scores = props.gamePosts.filter(el=> props.gameInf.id === el.gameinfo_id).map((element) => element.user_rating)
        for(let i=0; i<scores.length; i++){
            overallRating = overallRating + scores[i];
        }             
        overallRating = overallRating / scores.length;
        let t = String(overallRating);
        let temp = t.charAt(0);
        let saved = Number(temp);
        overallRating = saved;
    }
    return (
        <div className='gameListItemMain'>
            <h1>{props.gameInf.game_name}</h1><br />
            <div className='flR'>
                {coverImage}<br />
                <div>
                    <h3>Released: {props.gameInf.release_date}</h3>
                    <h3>IGDB Rating: {rating}</h3>
                    <h3>Parental Gaming Reviews Overall Rating: <Rating rate={overallRating} /></h3>
                </div>
            </div>
        </div>
    )
}
function mapStateToProps(state) {
    return {
        gameInfo: state.gameInfo,
        gamePosts: state.gamePosts,
    }
}
export default connect(mapStateToProps, null)(GameListItem);