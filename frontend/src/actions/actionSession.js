import * as session from "../utility/utilSession";
import Auth from "../utility/utilAuth";

export let RECEIVE_USER = "RECEIVE_USER";

export const receiveUser = currentUser => ({
    type: RECEIVE_USER,
    currentUser: currentUser
});

export const newUser = user => dispatch => {
  return session
  .newUser(user)
  .then(res => {
    return dispatch(receiveUser(res.data.user))
  });
};

export const loginUser = user => dispatch => {
  return session
  .loginUser(user)
  .then(res => {
    Auth.authenticateUser(res.data.email);
    return dispatch(receiveUser(res.data));
  })
  .catch(err => {
    Auth.deauthenticateUser()
  })
}

export const logoutUser = () => dispatch => {
  return session
  .logoutUser()
  .then(() => {
    Auth.deauthenticateUser();
    return dispatch(receiveUser(null));
  })
  .catch(err => {
    Auth.deauthenticateUser()
  });
};

export const checkAuthStatus = (user) => dispatch => {
  return session
  .isLoggedIn()
  .then(user => {
    if(user.data.email === Auth.getToken(user)) {
      return dispatch(receiveUser(user.data));
    }
  })
  .catch(err => {
    Auth.deauthenticateUser()
  });
};
