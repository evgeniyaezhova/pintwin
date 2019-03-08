import React from "react";
import { Link, withRouter } from "react-router-dom";
import "./css/UserProfile.css"

class UserProfile extends React.Component {

  componentDidMount(){
    this.props.fetchUserProfile(this.props.match.params.id);
    this.props.fetchAllPins()
  }

  displayUserPins(){

    let imagesReturned;
    let userId = this.props.user.id;
    return (imagesReturned = this.props.pins.map((pin, i) => {
      if(pin.user_id === userId){
      return (
        <div key={i} className="pins" >
        <Link to={"/pins/" + pin.id}>
        <img src={pin.pic_url} alt="pinshouldbehere" id="pinImg" />
        </Link>
        </div>
    )}
  }))
}

  render(){

  if(!this.props.user) return null
      return (
        <div>
          <div className="userDivParent">
            <div className="usernameWrapper">
            <h1 className="username">{this.props.user.username}</h1>
            </div>
            <div className="pinDisplayWrapper">
            <div className="pinDisplay">{this.displayUserPins()}</div>
            </div>
          </div>
        </div>
      )
  }
}

export default withRouter(UserProfile);
