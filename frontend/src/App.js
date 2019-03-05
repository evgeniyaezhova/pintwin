import React from 'react';
import './App.css';
// import NavBar from "./components/NavBar";
import HomeContainer from "./components/HomeContainer";
import AuthContainer from "./components/auth/AuthContainer";
import { AuthRoute, ProtectedRoute } from "./utility/utilAuthRouting";
import { Switch } from "react-router-dom";

class App extends React.Component {
  render() {
    return (
      <div className="App">
      <Switch>
        <AuthRoute path={'/auth'} component={AuthContainer} />
        <ProtectedRoute path={'/'} component={HomeContainer} />
      </Switch>
      </div>
    );
  }
}

export default App;



// import SinglePinContainer from "./components/SinglePinContainer"
// <NavBar />
// <main>
// <Route path="/pins/:id" component={SinglePinContainer} />
// <Route exact path="/" component={HomeContainer} />
// </main>
