import React from 'react';
import './App.css';
import NavBar from "./components/NavBar";
import HomeContainer from "./components/HomeContainer"

class App extends React.Component {
  render() {
    return (
      <div className="App">
       <NavBar />
       <HomeContainer />
      </div>
    );
  }
}

export default App;
