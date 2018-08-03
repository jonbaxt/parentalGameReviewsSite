import React, { Component } from 'react';
import { connect } from 'react-redux';
import { queryGameTitleFromIgdb } from '../../dux/reducer';

import SearchResults from '../SearchResults/SearchResults';
import './SearchBar.css';

class SearchBar extends Component {
    constructor() {
        super();
        this.state = {
            searchText: '',
            searchVis: false,
        }
        this.handleInputChange = this.handleInputChange.bind(this);
        this.clearSearchBar = this.clearSearchBar.bind( this );
        this.handleSearchVisModal = this.handleSearchVisModal.bind( this );
    };
    handleInputChange(e) {
        this.setState({ searchText: e.target.value });
        console.log(this.state.searchText);
    };
    clearSearchBar() {
        this.setState({ searchText: '' })
    }
    handleSearchVisModal() {
        this.setState({ searchVis: !this.state.searchVis });
    }
    render() {

        return (
            <div className='searchBarMain'>
                
                <h1 className='h1Sty'>Find a game to bring into the Database</h1>
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
                        onClick={() => { 
                            this.props.queryGameTitleFromIgdb(this.state.searchText)
                            this.handleSearchVisModal() }}
                    >Search</button>
                    <button
                        className='buttonStyled'
                        onClick={()=> this.clearSearchBar()}
                    >Clear</button>
                </div>
                <div className={this.state.searchVis ? 'visOn' : 'vis'} ><SearchResults results={this.props.tempGameSearchStore} /></div>
            </div>
        );
    };
};
let mapStateToProps = (state) => {
    return {
        tempGameSearchStore: state.tempGameSearchStore,
    }
}
export default connect(mapStateToProps, { queryGameTitleFromIgdb })(SearchBar);