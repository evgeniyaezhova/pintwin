import React from "react";

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
      <h3>Sign up to see more</h3>
         <form onSubmit={this.handleSubmit}>
         <div>
           <input
             onChange={this.handleChange}
             name="username"
             value={this.state.username}
             type="text"
             placeholder="Username"
           />
         </div>
         <br />
           <div >
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
               placeholder="Create a password"
             />
           </div>
           <br />
           <button type="submit">
             Continue
           </button>
         </form>
      </div>
    )
  }
}

export default SignUp;
