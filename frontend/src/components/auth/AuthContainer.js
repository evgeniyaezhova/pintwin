import { connect } from "react-redux";
import {withRouter} from "react-router-dom"
import UserAuth from "./UserAuth";
import { newUser, loginUser } from "../../actions/actionSession";
import { fetchFrontPins } from "../../actions/actionFrontPins";

const mapStateToProps = state => {

  return {
    currentUser: state.session.currentUser,
    frontPins: Object.values(state.frontPins)
  };
};

const mapDispatchToProps = dispatch => {
  return {
    newUser: user => dispatch(newUser(user)),
    loginUser: user => dispatch(loginUser(user)),
    fetchFrontPins: () => dispatch(fetchFrontPins())
  };
};

export default withRouter(
    connect(
      mapStateToProps,
      mapDispatchToProps
  )(UserAuth)
);
