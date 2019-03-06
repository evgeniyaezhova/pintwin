import { connect } from "react-redux";
import { checkAuthStatus } from "../actions/actionSession";
import App from "../App";
import { withRouter } from "react-router-dom";

const mapStateToProps = (state) => {
  return{
    currentUser: state.session.currentUser
  }
}

const mapDispatchToProps = dispatch => {
  return {
    checkAuthStatus: () => dispatch(checkAuthStatus())
  }
}

export default withRouter(
  connect(
    mapStateToProps,
    mapDispatchToProps
  )(App)
)
