import { connect } from "react-redux";
import {withRouter} from "react-router-dom"
import UserAuth from "./UserAuth";
import { newUser, loginUser } from "../../actions/actionSession";
import { fetchAllPins } from "../../actions/actionPins"
const mapStateToProps = state => {

  return {
    currentUser: state.session.currentUser,
    pins: Object.values(state.pins)
  };
};

const mapDispatchToProps = dispatch => {
  return {
    newUser: user => dispatch(newUser(user)),
    loginUser: user => dispatch(loginUser(user)),
    fetchAllPins: () => dispatch(fetchAllPins())
  };
};

export default withRouter(
    connect(
      mapStateToProps,
      mapDispatchToProps
  )(UserAuth)
);
