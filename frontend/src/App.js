import React from 'react';
import './App.css';
import NavBar from "./components/NavBar";
import HomeContainer from "./components/HomeContainer";
import { Route, Switch } from "react-router-dom"
import SinglePinContainer from "./components/SinglePinContainer"

class App extends React.Component {
  render() {
    return (
      <div className="App">
       <NavBar />
       <main>
       <Route path="/pins/:id" component={SinglePinContainer} />
       <Route exact path="/" component={HomeContainer} />
       </main>
      </div>
    );
  }
}

export default App;
