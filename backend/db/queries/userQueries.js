const { db } = require('../index');

const authHelpers = require("../../auth/helpers");

const getAllUsers = (req, res, next) => {
  db.any("SELECT * FROM users")
    .then(users => {
      res.status(200).json({
        status: "success!",
        users: users,
        message: "got all users!"
      });
    })
    .catch(err => {
      return next(err)
    });
};

const getSingleUser = (req, res, next) => {
  let userId = parseInt(req.params.id);
  db.one('SELECT * FROM users WHERE id=$1', [userId])
  .then(user => {
    res.status(200)
    .json({
      status: "success",
      user: user,
      message: "got one user"
    });
  })
  .catch(err => {
    return next(err)
  })
};


const deleteSingleUser = (req, res, next) => {
  let userId = parseInt(req.params.id);
  db.result('DELETE FROM users WHERE id=$1', userId)
  .then(result => {
    res.status(200)
    .json({
      status: "success",
      message: "deleted a single user"
    });
  })
  .catch(err => {
    return next(err)
  })
};

const createUser = (req, res, next) => {
  const hash = authHelpers.createHash(req.body.password);
  db.none(
    "INSERT INTO users (email, username, password_digest) VALUES (${email}, ${username}, ${password})",
    { email: req.body.email, username: req.body.username, password: hash }
  )
    .then(() => {
      res.status(200).json({
        message: "Registration successful."
      });
    })
    .catch(err => {
      next(err);
    });
}

const logoutUser = (req, res, next) => {
  req.logout();
  res.status(200).json({ message: "log out success" });
}

const loginUser = (req, res) => {
  res.json(req.user);
}

const isLoggedIn = (req, res) => {
  if (req.user) {
    res.json({
      id: req.user.id,
      email: req.user.email,
      username: req.user.username });
  } else {
    res.status(401).json({ err: "Nobody logged in" });
  }
}

module.exports = {
  getAllUsers,
  getSingleUser,
  deleteSingleUser,
  createUser,
  logoutUser,
  loginUser,
  isLoggedIn
};
