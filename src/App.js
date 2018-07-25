import React, { Component } from 'react';
import Routes from './routes';
import './reset.css';
import './App.css';
import './Components/HomeScreen/HomeScreen.css';

class App extends Component {

  render() {
    return (
      <div className="App">
        <Routes />
        <footer className='footerArea'>
          <h6>Site Created By: Jonathan Baxter</h6>
          <h6>This site uses content from igdb.com's database. For more information on the games, feel free to go to <a href='http://igdb.com'>igdb.com</a> for more information.</h6>
        </footer>
      </div>
    );
  }
}

export default App;
