import React from "react";

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
      <h3>Log in to see more</h3>
      <form onSubmit={this.handleSubmit}>
        <div>
          <input
            onChange={this.handleChange}
            name="email"
            value={this.state.email}
            type="text"
            placeholder="Email"
          />
        </div>
        <br />
        <div>
          <input
            onChange={this.handleChange}
            name="password"
            value={this.state.password}
            placeholder="Password"
          />
        </div>
        <br />
        <button type="submit">
          Log in
        </button>
      </form>
      </div>
    )
  }
}

export default Login;
