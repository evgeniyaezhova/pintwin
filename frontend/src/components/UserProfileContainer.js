import UserProfile from "./UserProfile";
import { connect } from "react-redux";
import { fetchUserProfile } from "../actions/actionUser";

const mapStateToProps = (state, ownProps) => {
  debugger
  return {
    currentUser: state.currentUser[ownProps.match.params.id]
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchUserProfile: (id) => dispatch(fetchUserProfile(id))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserProfile);
