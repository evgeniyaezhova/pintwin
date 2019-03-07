import axios from "axios"

export const fetchUserProfile = (id) => {
  return axios.get(`/api/users/${id}`)
}
