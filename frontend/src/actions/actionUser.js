import * as userApi from "../utility/utilUser";

export let RECEIVE_USER_PROFILE = "RECEIVE_USER_PROFILE"

export const receivedUserProfile = currentUser => {
  debugger
  return {
    type: RECEIVE_USER_PROFILE,
    currentUser: currentUser
  };
};

export const fetchUserProfile = (id) => dispatch => {
  debugger
  return userApi
  .fetchUserProfile(id)
  .then(res => {
debugger
    return dispatch(receivedUserProfile(res.data.currentUser))
  })
  .catch(err => {
    console.log(err)
  });

};
