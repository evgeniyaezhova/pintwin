import axios from "axios"

export const fetchFrontPins = () => {
  return axios.get("/api/frontPins")
};
