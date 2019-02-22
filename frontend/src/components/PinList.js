import React from "react";

export const PinList = props => {
  console.log(props.pins, "this")
  let imagesReturned;
  return (imagesReturned = props.pins.map((pin, i) => {
    return (
      <div key={i} classname="pins" >
      <img src={pin.pic_url} alt="" />
      </div>
    )
  }))
}
