const express = require('express');
const router = express.Router();
const passport = require("../auth/local");
const { loginRequired } = require("../auth/helpers")
const {
  getAllUsers,
  getSingleUser,
  deleteSingleUser,
  createUser,
  logoutUser,
  loginUser,
  isLoggedIn
} = require("../db/queries/userQueries")

router.get('/', getAllUsers);
router.get('/:id', getSingleUser);
router.post('/isLoggedIn', isLoggedIn);
router.post('/new', createUser);
router.post('/login', passport.authenticate('local'), loginUser);
router.post('/logout', loginRequired, logoutUser);
router.delete('/:id', deleteSingleUser)


module.exports = router;
