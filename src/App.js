import React, { Component } from 'react';
// import axios from 'axios';

import HomeScreen from './Components/HomeScreen/HomeScreen';
import './reset.css';
import './App.css';

class App extends Component {

  render() {
    return (
      <div className="App">
        <HomeScreen />
      </div>
    );
  }
}

export default App;
