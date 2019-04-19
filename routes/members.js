var express = require('express');
var db = require('../config/db');
var router = express.Router();

/* GET users listing. */
router.get('/registration_member', function(req, res, next) {

    res.render('registration_member');
});

module.exports = router;
