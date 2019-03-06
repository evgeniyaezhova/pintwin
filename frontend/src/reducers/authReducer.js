import { RECEIVE_USER } from "../actions/actionSession";

const initialState = { currentUser: null };

const authReducer = (state = initialState, action) => {

  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_USER:
      return { currentUser: action.currentUser };
    default:
      return state;
  }
};

export default authReducer;
