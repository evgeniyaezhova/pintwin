import { combineReducers } from "redux";
import pinsReducer from "./pinsReducer";
import authReducer from "./authReducer";
import userReducer from "./userReducer";
import frontPinsReducer from "./frontPinsReducer";


const rootReducer = combineReducers({
  pins: pinsReducer,
  frontPins: frontPinsReducer,
  session: authReducer,
  user: userReducer
})

export default rootReducer;

// const rootReducer = combineReducers({
//   pins: pinsReducer,
//   session: authReducer,
//   currentUser: userReducer,
//   user: userReducer
// })
