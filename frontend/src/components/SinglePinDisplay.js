import React from "react";
import {Link} from "react-router-dom"

export const SinglePinDisplay = ({ pic_url, title, body, link_url }) => {

    return(
      <div>
        <img src= {pic_url} alt=''/>
        <div className="pinTitle">
          {title}
        </div>
        <br />
        <div className="pinBody">
          {body}
        </div>
        <hr />
        <Link to={"/"}>BACK</Link>
      </div>
    )
}
