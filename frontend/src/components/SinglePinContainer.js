import SinglePin from "./SinglePin";
import { connect } from "react-redux";
import { fetchSinglePin } from "../actions/actionPins";

const mapStateToProps = (state, ownProps) => {
  return {
    pin: state.pins[ownProps.match.params.id]
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchSinglePin: (id) => dispatch(fetchSinglePin(id))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SinglePin);
