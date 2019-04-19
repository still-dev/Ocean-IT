var express = require('express');
var db = require('../config/db');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
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

router.get('/index', function(req, res, next) {
  var members_table;
  db.query(`select * from members`, function (error, members) {
    if(error){
      throw error;
    }
    members_table = members;
    res.render('index', {'members_table': members_table});
  });
});

router.get('/introduction', function (req, res, next) {
  res.render('introduction');
});

router.get('/members', function (req, res, next) {
  var members_table;
  db.query(`select * from members`, function (error, members) {
    if(error){
      throw error;
    }
    members_table = members;
    res.render('members', {'members_table': members_table});
  });
});

router.get('/research_fields', function (req, res, next) {
  res.render('research_fields');
});

router.get('/research_results', function (req, res, next) {
  res.render('research_results');
});

router.get('/question_board', function (req, res, next) {
  res.render('question_board');
});

router.get('/generic', function (req, res, next) {
  res.render('generic');
});

router.get('/elements', function (req, res, next) {
  res.render('elements');
});

module.exports = router;
