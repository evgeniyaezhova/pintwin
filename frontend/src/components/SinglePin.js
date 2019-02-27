import { PinList } from "./PinList";
import React from "react";
import NavBar from "./NavBar"
import {SinglePinDisplay} from './SinglePinDisplay'


export default class SinglePin extends React.Component {

  componentDidMount(){

    this.props.fetchSinglePin(this.props.match.params.id)
  }

  render(){
      if(!this.props.pin) return null

  let { pic_url, title, body, link_url } = this.props.pin


    return(
      <div id="singlePin">
      <SinglePinDisplay pic_url={pic_url} title={title} body={body} link_url={link_url} />

      </div>
    )
  }
}
