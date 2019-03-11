const { db } = require("../index.js");

const getFrontPins = (req, res, next) => {
  db.any("SELECT * FROM frontPins")
    .then(frontPins => {
      res.status(200).json({
        status: "success!",
        frontPins: frontPins,
        message: "got all pins!"
      });
    })
    .catch(err => {
      return next(err)
    });
};

module.exports = {
  getFrontPins
};
