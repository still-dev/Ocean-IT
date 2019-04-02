var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
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
  res.render('index', { title: 'Express' });
});

router.get('/generic', function (req, res, next) {
  res.render('generic');
});

router.get('/elements', function (req, res, next) {
  res.render('elements');
});
module.exports = router;
