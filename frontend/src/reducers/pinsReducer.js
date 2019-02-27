import { RECEIVE_PINS, RECEIVE_ONE_PIN } from "../actions/actionPins"
import merge from "lodash/merge";

const normalize = (arrOfObj) => {
  let obj = {};
  for(let i = 0; i < arrOfObj.length; i++){
    obj[arrOfObj[i].id] = arrOfObj[i]
  }

  return obj

}

const pinsReducer = (oldState = {}, action) => {
  switch (action.type) {
    case RECEIVE_PINS:
      return normalize(action.pins);
    case RECEIVE_ONE_PIN:
      return merge({}, oldState, {[action.pin.id]: action.pin});
    default:
    return oldState
  }
}

export default pinsReducer;
