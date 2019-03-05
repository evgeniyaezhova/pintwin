import axios from "axios";

export const newUser = (user) => {
  return axios.post("/api/users/new", user)
}

export const loginUser = (user) => {
  return axios.post("/api/users/login", user)
}

export const logoutUser = () => {
  return axios.post("/api/users/logout")
}

export const isLoggedIn = () => {
  return axios.post("/api/users/isLoggedIn")
}
