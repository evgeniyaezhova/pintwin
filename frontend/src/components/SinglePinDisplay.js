import React from "react";
import {Link} from "react-router-dom"

export const SinglePinDisplay = ({ pic_url, title, body, link_url }) => {

    return(
      <div className="singlePinDisplay">
          <div className="singlePinImage">
              <Link to={link_url}>
              <img src= {pic_url} alt='' id="singlePinImg"/>
              </Link>
          </div>
          <div className="singlePinTexts">
              <div className="pinTitle">
                {title}
              </div>
              <br />
              <div className="pinLinkUrl">
                {link_url}
              </div>
              <br />
              <div className="pinBody">
                {body}
              </div>
          </div>
      </div>
    )
}
