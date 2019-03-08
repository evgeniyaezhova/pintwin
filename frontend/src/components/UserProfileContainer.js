import UserProfile from "./UserProfile";
import { connect } from "react-redux";
import { fetchUserProfile } from "../actions/actionUser";
import { fetchAllPins } from "../actions/actionPins";

const mapStateToProps = (state, ownProps) => {

  return {
    user: state.user[ownProps.match.params.id],
    pins: Object.values(state.pins)
  };
};

const mapDispatchToProps = dispatch => {

  return {
    fetchUserProfile: (id) => dispatch(fetchUserProfile(id)),
    fetchAllPins: () => dispatch(fetchAllPins())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserProfile);
