import { combineReducers } from "redux";
import pinsReducer from "./pinsReducer";
import authReducer from "./authReducer";
import userReducer from "./userReducer";


const rootReducer = combineReducers({
  pins: pinsReducer,
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
