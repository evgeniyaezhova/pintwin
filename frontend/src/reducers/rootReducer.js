import { combineReducers } from "redux";
import pinsReducer from "./pinsReducer";

const rootReducer = combineReducers({
  pins: pinsReducer
})

export default rootReducer;
