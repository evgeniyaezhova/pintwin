import { connect } from "react-redux";
import {withRouter} from "react-router-dom"
import UserAuth from "./UserAuth";
import { newUser, loginUser } from "../../actions/actionSession";

const mapStateToProps = state => {

  return {
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = dispatch => {
  return {
    newUser: user => dispatch(newUser(user)),
    loginUser: user => dispatch(loginUser(user))
  };
};

export default withRouter(
    connect(
      mapStateToProps,
      mapDispatchToProps
  )(UserAuth)
);
