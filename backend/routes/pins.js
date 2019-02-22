const express = require("express");
const router = express.Router();

const { getAllPins, getSinglePin, getAllPinsForOneUser, deleteSinglePin } = require("../db/queries/pinsQueries");

router.get("/", getAllPins);
router.get("/:id", getSinglePin);
router.get("/users/:id", getAllPinsForOneUser);
router.delete("/:id", deleteSinglePin);

module.exports = router;
