import { connect } from "react-redux";
import Home from "./Home";
import { fetchAllPins } from "../actions/actionPins";
import './Home.css'

const mapToStateProps = state => {
  return {
    pins: state.pins
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchAllPins: () => dispatch(fetchAllPins())
  };
};

export default connect (
  mapToStateProps,
  mapDispatchToProps
) (Home);
