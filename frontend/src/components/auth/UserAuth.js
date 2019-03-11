import React from "react";
import Login from "./Login";
import SignUp from "./SignUp";
import "./css/userAuth2.css";


class UserAuth extends React.Component {
  state = {
    loginShowing: false
  }

  componentDidMount(){
    this.props.fetchFrontPins()
  }

  displayFrontPins(){
    let imagesReturned;
    return (imagesReturned = this.props.frontPins.map((pin, i) => {
      return (
        <div key={i} className="pins" >
        <img src={pin.pic_url} alt="pinshouldbehere" id="pinImg" />
        </div>
    )
  }))
}

  toggleForm = () => {
    this.setState({
      loginShowing: !this.state.loginShowing
    })
  }

  render() {
   return (
     <div className="authFormParent">
           <div className="pinlist-parent2">
              <div className="pinlist2">{this.displayFrontPins()}</div>
           </div>
      <div className="trasparentLayer">
           {!this.state.loginShowing ? (
             <div className="authForm">
                 <button  onClick={this.toggleForm} className="authButton">
                 <a className="buttonText">Log In</a>
                 </button>
                 <div className="signupBox">
                   <SignUp
                     newUser={this.props.newUser}
                     loginUser={this.props.loginUser}
                   />
                 </div>
             </div>
                  ) : (
             <div className="authForm">
                 <button onClick={this.toggleForm} className="authButton">
                   <a className="buttonText">Sign up</a>
                 </button>
                 <div className="signupBox">
                  <Login loginUser={this.props.loginUser} />
                 </div>
             </div>
           )}
      </div>
     </div>
   );
 }
}

export default UserAuth;
