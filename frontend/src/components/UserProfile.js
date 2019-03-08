import React from "react";
import { Link, withRouter } from "react-router-dom";
import "./css/UserProfile.css"

class UserProfile extends React.Component {

  componentDidMount(){

    this.props.fetchUserProfile(this.props.match.params.id)
  }

  render(){

  if(!this.props.user) return null
      return (
        <div>
          <div className="userDivParent">
            <h1 className="username">{this.props.user.username}</h1>
          </div>
        </div>
      )
  }
}

export default withRouter(UserProfile);
