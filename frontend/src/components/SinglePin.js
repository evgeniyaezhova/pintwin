import React from "react";
// import {Link} from "react-router-dom"
import {SinglePinDisplay} from './SinglePinDisplay';
import './css/SinglePin.css'


class SinglePin extends React.Component {

  componentDidMount(){

    this.props.fetchSinglePin(this.props.match.params.id)
  }

  render(){
      if(!this.props.pin) return null
      let { pic_url, title, body, link_url } = this.props.pin
      return(
        <div className="singlePinParent">
        <SinglePinDisplay pic_url={pic_url} title={title} body={body} link_url={link_url} />
        </div>
      )
  }
}

export default SinglePin;



// <div className="homeLink">
// <Link to={"/"}>Home</Link>
// </div>
