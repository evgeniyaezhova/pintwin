import React from "react";
import {Link} from "react-router-dom";
import "./css/Home.css"

export class PinList extends React.Component {
  componentDidMount(){
    this.props.fetchAllPins()
  }

  displayAllPins(){
    let imagesReturned;
    return (imagesReturned = this.props.pins.map((pin, i) => {
      return (
        <div key={i} className="pins" >
        <Link to={"/pins/" + pin.id}>
        <img src={pin.pic_url} alt="pinshouldbehere" />
        </Link>
        </div>
    )
  }))
}

render(){
  return(
    <div className="pinlist">
    {this.displayAllPins()}
    </div>
  )
}
}
