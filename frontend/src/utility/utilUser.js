import axios from "axios"

export const fetchAllUsers = () => {
  return axios.get("/api/users")
};

export const fetchUserProfile = (id) => {
  return axios.get(`/api/users/${id}`)
};
