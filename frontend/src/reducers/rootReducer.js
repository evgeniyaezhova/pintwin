import { combineReducers } from "redux";
import pinsReducer from "./pinsReducer";
import authReducer from "./authReducer";


const rootReducer = combineReducers({
  pins: pinsReducer,
  session: authReducer
})

export default rootReducer;
