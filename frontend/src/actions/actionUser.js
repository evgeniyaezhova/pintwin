import * as userApi from "../utility/utilUser";

export let RECEIVE_USERS = "RECEIVE_USERS"
export let RECEIVE_USER_PROFILE = "RECEIVE_USER_PROFILE"

export const receivedUsers = users => {
  return {
    type: RECEIVE_USERS,
    users: users
  };
};

export const fetchAllUsers = () => dispatch => {
  return userApi
  .fetchAllUsers()
  .then(res => {
    return dispatch(receivedUsers(res.data.users))
  })
  .catch(err => {
    console.log(err)
  });
};

export const receivedUserProfile = user => {
  return {
    type: RECEIVE_USER_PROFILE,
    user: user
  };
};

export const fetchUserProfile = (id) => dispatch => {
  return userApi
  .fetchUserProfile(id)
  .then(res => {

    return dispatch(receivedUserProfile(res.data.user))
  })
  .catch(err => {
    console.log(err)
  });

};
