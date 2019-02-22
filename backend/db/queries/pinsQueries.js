const { db } = require("../index.js");

const getAllPins = (req, res, next) => {
  db.any("SELECT * FROM pins")
    .then(pins => {
      res.status(200).json({
        status: "success!",
        pins: pins,
        message: "got all pins!"
      });
    })
    .catch(err => {
      return next(err)
    });
};

const getSinglePin = (req, res, next) => {
  let pinId = parseInt(req.params.id);
  db.one('SELECT * FROM pins WHERE id=$1', [pinId])
  .then(pin => {
    res.status(200)
    .json({
      status: "success",
      pin: pin,
      message: "got one pin"
    });
  })
  .catch(err => {
    return next(err)
  })
};


const getAllPinsForOneUser = (req, res, next) => {
  let userId = parseInt(req.params.id);
  db.any('SELECT * FROM pins WHERE user=$1', [userId])
  .then(pins => {
    res.status(200)
    .json({
      status: "success",
      pins: pins,
      message: "Got all pins for one user"
    });
  })
  .catch(err => {
    return next(err)
  });
};

const deleteSinglePin = (req, res, next) => {
  let pinId = parseInt(req.params.id);
  db.result('DELETE FROM pins WHERE id=$1', pinId)
  .then(result => {
    res.status(200)
    .json({
      status: "success",
      message: "deleted a single pin"
    });
  })
  .catch(err => {
    return next(err)
  })
};

module.exports = {
  getAllPins,
  getSinglePin,
  getAllPinsForOneUser,
  deleteSinglePin
};
