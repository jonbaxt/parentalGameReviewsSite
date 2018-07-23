import React, { Component } from 'react';

import './SearchBar.css';

class SearchBar extends Component {
    constructor() {
        super();
        this.state = {
            searchText: ''
        }
        this.handleInputChange = this.handleInputChange.bind(this);
        this.clearSearchBar = this.clearSearchBar.bind( this );
    };
    handleInputChange(e) {
        this.setState({ searchText: e.target.value });
        console.log(this.state.searchText);
    };
    clearSearchBar() {
        this.setState({ searchText: '' })
    }
    render() {

        return (
            <div className='searchBarMain'>

                <h1 className='h1Sty'>Find a game</h1>
                    <input
                        type='text'
                        placeholder='Name of a game'
                        className='inputBoxStyled'
                        onChange={(e) => this.handleInputChange(e)}
                        value={this.state.searchText}
                    />
                <div className='searchInputArea'>
                    <button
                        className='buttonStyled'
                        onClick={() => console.log('It was clicked')}
                    >Search</button>
                    <button
                        className='buttonStyled'
                        onClick={()=> this.clearSearchBar()}
                    >Clear</button>
                </div>
            </div>
        );
    };
};
export default SearchBar;