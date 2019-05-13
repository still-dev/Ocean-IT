var express = require('express');
var db = require('../config/db');
var router = express.Router();

/* GET home page. */
router.get(['/', '/index'], function(req, res, next) {
  var members_table;
  db.query(`select * from members`, function (error, members) {
    if(error){
      throw error;
    }
    members_table = members;
    res.render('index', {'members_table': members_table});
  });
});

router.get('/ko', function (req, res) {
  res.cookie('lang', 'ko');
  res.redirect('back');
});

router.get('/en', function (req, res) {
  res.cookie('lang', 'en');
  res.redirect('back');
});

router.get('/generic', function (req, res, next) {
  res.render('generic');
});

router.get('/elements', function (req, res, next) {
  res.render('elements');
});

module.exports = router;
