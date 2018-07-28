import React from 'react';
import { connect } from 'react-redux';

import Rating from '../Rating/Rating';
import './Post.css';
const _ = require('lodash');

function Post(props) {
    let index = _.findIndex(props.gamePosts, (current) => current.post_id === props.postId);
    return (
        <div className='gamePostBlurb'>
            <span className='iconArea flexColumn spaceFromBot spaceFromRight'>
                <h1 className='spaceFromTop cenTex'>{props.gamePosts[index].username}</h1>
                <img className='imageSized' src={props.gamePosts[index].user_img_url} alt='' />
            </span>
            <span className='flexColumn spaceFromBot'>
                <h2 className='spaceFromTop'>User Rating: <Rating rate={props.gamePosts[index].user_rating} /></h2>
                <h3 className='head3'>Review</h3>
                <p>{props.gamePosts[index].user_review}</p>

                <h3 className='head3'>User Recommendation</h3>
                <p>{props.gamePosts[index].recommendation}</p>
            </span>
        </div>
    )
}
let mapStateToProps = (state) => {
    return {
        gamePosts: state.gamePosts
    }
}
export default connect(mapStateToProps, null)(Post);