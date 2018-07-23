import React, { Component } from 'react';
// import axios from 'axios';

// import ListComp from './ListComp';
import './reset.css';
import './App.css';

class App extends Component {
  // constructor() {
  //   super()
  //   this.state = {
  //     inputStuff: '',
  //     inputList: ['Dude', 'Word', 'Make My Day'],
  //   }
  //   this.handleTextInput = this.handleTextInput.bind(this);
  //   this.addToList = this.addToList.bind(this);
  // }
  // handleTextInput(e) {
  //   this.setState({
  //     inputStuff: e.target.value
  //   })
  // }
  // addToList(){
  //   let newList = this.state.inputList;
  //   newList.push(this.state.inputStuff)
  //   // console.log(newList)
  //   this.setState({
  //     inputList: newList,
  //     inputStuff: ''
  //   })
  // }

  render() {
    // let createList = this.state.inputList.map( (e, index) => { return (<p key={index} >{e}</p>)})
    return (
      <div className="App">
        Parental Game Database

        {/* <input type='text' onChange={(e)=> this.handleTextInput(e)} value={this.state.inputStuff} />
        <button onClick={() => this.addToList()} >Add to the List</button>
        <h1>{this.state.inputStuff}</h1
        >
        <h3>My Stuff in Array</h3>
        {createList} */}
      </div>
    );
  }
}

export default App;
