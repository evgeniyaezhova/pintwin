import React from "react";
import Login from "./Login";
import SignUp from "./SignUp";
import "./userAuth2.css";


class UserAuth extends React.Component {
  state = {
    loginShowing: false
  }

  componentDidMount(){
    this.props.fetchAllPins()
  }

  displayAllPins(){
    let imagesReturned;
    return (imagesReturned = this.props.pins.map((pin, i) => {
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
           <div className="pinlist-parent">
              <div className="pinlist">{this.displayAllPins()}</div>
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
