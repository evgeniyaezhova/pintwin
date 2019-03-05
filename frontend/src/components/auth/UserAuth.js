import React from "react";
import Login from "./Login";
import SignUp from "./SignUp";

class UserAuth extends React.Component {
  state = {
    loginShowing: false
  }

  toggleForm = () => {
    this.setState({
      loginShowing: !this.state.loginShowing
    })
  }

  render() {
   return (
     <div>
       {!this.state.loginShowing ? (
         <div>
           <button  onClick={this.toggleForm}>
             Login
           </button>
           <SignUp
             newUser={this.props.newUser}
             loginUser={this.props.loginUser}
           />
         </div>
       ) : (
         <div>
           <button onClick={this.toggleForm}>
             Sign up
           </button>
           <Login loginUser={this.props.loginUser} />
         </div>
       )}
     </div>
   );
 }
}

export default UserAuth;
