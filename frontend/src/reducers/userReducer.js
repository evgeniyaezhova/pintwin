import { RECEIVE_USER_PROFILE } from "../actions/actionUser"
import merge from "lodash/merge";

const normalize = (arrOfObj) => {
  let obj = {};
  for(let i = 0; i < arrOfObj.length; i++){
    obj[arrOfObj[i].id] = arrOfObj[i]
  }
  return obj
}

const userReducer = (oldState = {}, action) => {
  switch (action.type) {
    case RECEIVE_USER_PROFILE:
      return normalize(action.currentUser);
    default:
    return oldState
  }
}

export default userReducer;

// case RECEIVE_PINS:
// return normalize(action.pins);
