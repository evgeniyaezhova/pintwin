import React from "react";
import { Link } from "react-router-dom";
import './css/NavBar.css'

class NavBar extends React.Component {

  render(){

    const { currentUser } = this.props;

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
      <input type="text" placeholder="Search" className="searchBox" />
      </form>
      </li>
      <li id="homeli">
      <Link to="/">Home</Link>
      </li>
      <li id="userli">
      <Link to="/username">USER</Link>
      </li>
      <li id="dotdotdotli"><a> ... </a></li>
      </nav>
      </div>
    )
  }
  }

export default NavBar
