import axios from "axios"

export const fetchAllPins = () => {
  return axios.get("/api/pins")
};
