import axios from "axios"

export const fetchAllPins = () => {
  return axios.get("/api/pins")
};

export const fetchSinglePin = (id) => {
  return axios.get(`/api/pins/${id}`)
}
