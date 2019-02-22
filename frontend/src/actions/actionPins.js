import * as pinsApi from "../utility/utilPins";

export let RECEIVE_PINS = "RECEIVE_PINS";

export const receivedPins = pins => {
  return {
    type: RECEIVE_PINS,
    pins: pins
  };
};

export const fetchAllPins = () => dispatch => {
  return pinsApi
  .fetchAllPins()
  .then(res => {
    return dispatch(receivedPins(res.data.pins))
  })
  .catch(err => {
    console.log(err)
  });

};
