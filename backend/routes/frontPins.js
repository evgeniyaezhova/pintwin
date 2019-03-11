const express = require("express");
const router = express.Router();

const { getFrontPins } = require("../db/queries/frontPinsQueries");

router.get("/", getFrontPins);

module.exports = router;
