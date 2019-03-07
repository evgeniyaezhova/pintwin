import React from "react";
import "./css/userAuth3.css";

class SignUp extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      email: "",
      password: "",
      username: ""
    };
  }

  handleChange = e => {
    this.setState({
      [e.target.name]: e.target.value
    });
  };

  handleSubmit = e => {
    e.preventDefault();
    this.props.newUser(this.state)
    .then(() => {
      this.props.loginUser({
        email: this.state.email,
        password: this.state.password
      });
    });
  };

  render(){
    return(
      <div>
      <img src={require("../pinterestLogo.png")} id="logo1"/>
      <h3 className="seeMore">Sign up to see more</h3>
      <h1 className="accessPintwin">Spark your inspiration with Pintwin by creating a free account</h1>
        <div className="formDiv">
         <form onSubmit={this.handleSubmit} className="form">
         <div className="inputBoxParent">
           <input
             onChange={this.handleChange}
             name="username"
             value={this.state.username}
             type="text"
             placeholder="Username"
             className="inputBox"
           />
         </div>
         <br />
           <div className="inputBoxParent">
             <input
               onChange={this.handleChange}
               name="email"
               value={this.state.email}
               type="text"
               placeholder="Email"
               className="inputBox"
             />
           </div>
           <br />
           <div className="inputBoxParent">
             <input
               onChange={this.handleChange}
               name="password"
               type="password"
               value={this.state.password}
               placeholder="Create a password"
               className="inputBox"
             />
           </div>
           <br />
           <button type="submit" className="continueButton">
             Continue
           </button>
         </form>
        </div>
      </div>
    )
  }
}

export default SignUp;
