import React from "react";
import {Switch, Route} from "react-router-dom";
import UserProfileContainer from "./UserProfileContainer";
import NavBarContainer from "./NavBarContainer";
import PinListContainer from "./PinListContainer";
import SinglePinContainer from './SinglePinContainer'

// import HomeContainer from "./HomeContainer"
import './css/Home.css'

export default class Home extends React.Component {

  render(){

    return(
      <div>
        <NavBarContainer />

            <Switch>
              <Route exact path="/user/:id" component={UserProfileContainer} />
              <Route exact path="/" component={PinListContainer} />
              <Route exact path="/pins/:id" component={SinglePinContainer} />
            </Switch>

      </div>
    )
  }
}
