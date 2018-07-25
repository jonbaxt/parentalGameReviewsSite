import React from 'react';
import { connect } from 'react-redux';
import './GameListItem.css';

function GameListItem(props) {
    let rating = props.gameInf.igdb_rating !== null ? props.gameInf.igdb_rating : 'No rating';
    let coverImage = props.gameInf.cover_img_url ? 
    <img src={'http://' + props.gameInf.cover_img_url} alt='' /> : '';
    return (
        <div className='gameListItemMain'>
            <h1>{props.gameInf.game_name}</h1><br />
            <div className='flR'>
                {coverImage}<br />
                <div>
                    <h3>Released: {props.gameInf.release_date}</h3>
                    <h3>IGDB Rating: {rating}</h3>
                </div>
            </div>
        </div>
    )
}
function mapStateToProps(state) {
    return {
        gameInfo: state.gameInfo
    }
}
export default connect(mapStateToProps, null)(GameListItem);