import { PinList } from "./PinList";
import React from "react";
import NavBar from "./NavBar"
import HomeContainer from "./HomeContainer"
import './Home.css'

export default class Home extends React.Component {
  state = {};

  componentDidMount(){
    this.props.fetchAllPins()
  }

  render(){
    return(
      <div id="pinlist">
        <PinList pins={this.props.pins} />
      </div>
    )
  }
}
