import { connect } from "react-redux";
import Home from "./Home";
import { fetchAllPins } from "../actions/actionPins";
import './css/Home.css'

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
) (Home);
