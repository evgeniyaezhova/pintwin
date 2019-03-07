import React from "react";
import { Link, withRouter } from "react-router-dom";
import "./css/UserProfile.css"

class UserProfile extends React.Component {

  componentDidMount(){

    this.props.fetchUserProfile(this.props.match.params.id)
  }

  render(){

      return (
        <div>
          <h1 className="username">USER</h1>
        </div>
      )
  }
}

export default withRouter(UserProfile);
