import { connect } from "react-redux";
import { PinList } from "./PinList";
import { fetchAllPins } from "../actions/actionPins";

const mapStateToProps = state => {

  return {
    pins: Object.values(state.pins)
  };
};

const mapDispatchToProps = dispatch => {

  return {
    fetchAllPins: () => dispatch(fetchAllPins())
  };
};

export default connect (
  mapStateToProps,
  mapDispatchToProps
) (PinList);
