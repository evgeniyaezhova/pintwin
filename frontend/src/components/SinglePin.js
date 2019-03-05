import React from "react";
import {SinglePinDisplay} from './SinglePinDisplay'


class SinglePin extends React.Component {

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

export default SinglePin;
