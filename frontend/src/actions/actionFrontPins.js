import * as frontPinsApi from "../utility/utilFrontPins";

export let RECEIVE_FRONT_PINS = "RECEIVE_FRONT_PINS";

export const receivedFrontPins = frontPins => {
  return {
    type: RECEIVE_FRONT_PINS,
    frontPins: frontPins
  };
};

export const fetchFrontPins = () => dispatch => {
  return frontPinsApi
  .fetchFrontPins()
  .then(res => {
    return dispatch(receivedFrontPins(res.data.frontPins))
  })
  .catch(err => {
    console.log(err)
  });

};
