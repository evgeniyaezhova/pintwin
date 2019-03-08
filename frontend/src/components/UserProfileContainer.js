import UserProfile from "./UserProfile";
import { connect } from "react-redux";
import { fetchUserProfile } from "../actions/actionUser";

const mapStateToProps = (state, ownProps) => {

  return {
    user: state.user[ownProps.match.params.id]
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
