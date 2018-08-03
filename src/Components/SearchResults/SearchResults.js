import React, { Component } from 'react';
import { connect } from 'react-redux';
// import {} from '../../dux/reducer';

import './SearchResults.css';
const _ = require('lodash');

class SearchResults extends Component {
    constructor() {
        super();
        this.state = {
            gamesToStoreInDB: [],
            addButtonsArray: [],
        }
        this.handleAddButton = this.handleAddButton.bind(this);
        this.handleRemoveButton = this.handleRemoveButton.bind( this );
        this.isButtonNotDisabled = this.isButtonNotDisabled.bind( this );
    }
    handleAddButton(gameInListFromWeb) {
        let newArr = this.state.gamesToStoreInDB;
        let newButDis = this.state.addButtonsArray;
        newArr.push(gameInListFromWeb);
        newButDis.push(gameInListFromWeb.id);
        this.setState({ gamesToStoreInDB: newArr, addButtonsArray: newButDis });
    }
    handleRemoveButton(gameToRemoveId) {
        // let newArr = _.difference(this.state.addButtonsArray, gameToRemoveId);

        let buttons = _.remove(this.state.addButtonsArray, function(n) {
            return n === gameToRemoveId;
          });
        console.log(buttons);
        this.setState({ addButtonsArray: buttons });
    }
    isButtonNotDisabled(buttonId) {
        for (let key in this.state.addButtonsArray) {
            if (buttonId === this.state.addButtonsArray[key]) { 
                return buttonId;
            }
        }
        return '';
    }
    render() {
        console.log(this.state.gamesToStoreInDB);
        let gamesToImportToWebsiteList = 'Loading';
        if (this.props.tempGameSearchStore !== 'empty') {
            gamesToImportToWebsiteList = this.props.tempGameSearchStore.map(elem => {
                return (<div key={elem.id}>
                    <h1>{elem.name}</h1>
                    <h3>{elem.summary}</h3>
                    {/* <img src={ 'http:' + elem.cover.url } alt='' /> */}
                    <button className='addButton' onClick={() => this.handleAddButton(elem)} disabled={this.isButtonNotDisabled(elem.id)} >Add</button>
                    <button className='remButton' onClick={() => this.handleRemoveButton(elem.id)}
                    disabled={!this.isButtonNotDisabled(elem.id)} >Remove</button>
                    <br /><br />
                </div>)
            })
        }

        return (
            <div className='searchResMain'>
                <div className='searchModal'>
                    {gamesToImportToWebsiteList}

                </div>
            </div>
        )
    }
}

function mapStateToProps(state) {
    return {
        tempGameSearchStore: state.tempGameSearchStore
    }
}

export default connect(mapStateToProps, null)(SearchResults);