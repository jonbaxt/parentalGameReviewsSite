import React from 'react';
import { connect } from 'react-redux';
import './GameListItem.css';

function GameListItem(props) {
    let index = props.gameInfo.findIndex(()=> props.gameIdNumber === 'id')

    console.log(index)
    return(
        <div className='gameListItemMain'>
            <p>Game Name</p>
            <p>Number of Reviews</p>
        </div>
    )
}
function mapStateToProps(state){
    return {
        gameInfo: state.gameInfo
    }
}
export default connect(mapStateToProps, null)( GameListItem );