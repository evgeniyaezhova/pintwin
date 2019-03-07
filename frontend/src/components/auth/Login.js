import React from "react";
import "./css/userAuth3.css";

class Login extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      email: "",
      password: "",
    };
  }

  handleChange = e => {
    this.setState({
      [e.target.name]: e.target.value
    });
  };

  handleSubmit = e => {
    e.preventDefault();
      this.props.loginUser({
        email: this.state.email,
        password: this.state.password
      });
    };

  render(){
    return(
      <div>
      <img src={require("../pinterestLogo.png")} id="logo1"/>
      <h3 className="seeMore">Log in to see more</h3>
      <h1 className="accessPintwin">Spark your inspiration with Pintwin by creating a free account</h1>
      <div className="formDiv">
      <form onSubmit={this.handleSubmit} className="form">
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
            value={this.state.password}
            placeholder="Password"
            className="inputBox"
            type="password"
          />
        </div>
        <br />
        <button type="submit" className="continueButton">
          Log in
        </button>
      </form>
      </div>
      </div>
    )
  }
}

export default Login;
