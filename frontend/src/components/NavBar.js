import React from "react";
import { Link, withRouter } from "react-router-dom";
import './css/NavBar.css';


class NavBar extends React.Component {

 handleLogout = e => {
   e.preventDefault();
   this.props.logoutUser();
 }
  render(){

console.log("READ HERE: ", this.props)

    return this.props.currentUser ? (

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
      <Link to={`/user/${this.props.currentUser.username}`}>{this.props.currentUser.username}</Link>
      </li>
      <li >

      <button type="button" onClick={this.handleLogout} id="dotdotdotli">Log out</button>

      </li>
      </nav>
      </div>
    ) : null
  }
  }

export default withRouter(NavBar);
