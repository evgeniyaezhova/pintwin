import { RECEIVE_USERS, RECEIVE_USER_PROFILE } from "../actions/actionUser"
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
    case RECEIVE_USERS:
      return normalize(action.users);
    case RECEIVE_USER_PROFILE:
      return merge({}, oldState, {[action.user.id]: action.user});
    default:
    return oldState
  }
}

export default userReducer;

// case RECEIVE_PINS:
// return normalize(action.pins);

// const userReducer = (oldState = {}, action) => {
//   switch (action.type) {
//     case RECEIVE_USERS:
//       return normalize(action.users);
//     case RECEIVE_USER_PROFILE:
//       return merge({}, oldState, {[action.currentUser.id]: action.currentUser});
//     default:
//     return oldState
//   }
// }
