import React from "react";
import {Link} from "react-router-dom"

export const PinList = props => {

  console.log(props.pins, "this")
  let imagesReturned;
  return (imagesReturned = props.pins.map((pin, i) => {
    
    return (
      <div key={i} className="pins" >
      <Link to={"/pins/" + pin.id}>
      <img src={pin.pic_url} alt="pinshouldbehere" />
      </Link>
      </div>
    )
  }))
}
