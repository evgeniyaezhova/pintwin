import { RECEIVE_FRONT_PINS } from "../actions/actionFrontPins"
import merge from "lodash/merge";

const normalize = (arrOfObj) => {
  let obj = {};
  for(let i = 0; i < arrOfObj.length; i++){
    obj[arrOfObj[i].id] = arrOfObj[i]
  }

  return obj

}

const frontPinsReducer = (oldState = {}, action) => {
  switch (action.type) {
    case RECEIVE_FRONT_PINS:
      return normalize(action.frontPins);
    default:
    return oldState
  }
}

export default frontPinsReducer;
