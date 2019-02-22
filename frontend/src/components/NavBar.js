import React from "react";
import { Link } from "react-router-dom";
import './NavBar.css'

const NavBar = () => {
  return(
    <div className="nvbr">
    <nav className="navbar">
       <li id="logoli">
       <Link to="/">
       <img src={require("./pinterestLogo.png")} alt="logo" id="logo"/></Link>
       </li>
       <li id="searchbarli">
       <img src={require("./magni.png")} alt="magglass" id="magglass" />
       <form>
         <input type="text" placeholder="Search" className="searchBox" maxlength="500" />
         </form>
       </li>
       <li id="homeli">
       <Link to="/">Home</Link>
       </li>
       <li id="userli">
       <Link to="/username">User</Link>
       </li>
       <li id="dotdotdotli"><a> ... </a></li>
    </nav>
    // <hr/>
    </div>
  )
}

export default NavBar
