var express = require('express');
var db = require('../config/db');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('research_fields');
});

router.get('/write', function(req, res, next) {
    res.render('research_fields_write_page');
});

module.exports = router;