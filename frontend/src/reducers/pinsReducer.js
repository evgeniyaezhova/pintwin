import { RECEIVE_PINS } from "../actions/actionPins"

const  pinsReducer = (oldState = [], action) => {
  switch (action.type) {
    case RECEIVE_PINS:
    return action.pins;
    default:
    return oldState
  }
}

export default pinsReducer;
