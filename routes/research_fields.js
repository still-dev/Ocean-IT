var express = require('express');
var db = require('../config/db');
var router = express.Router();
var research_fields_table;
var rows;
/* GET home page. */
router.get('/', function(req, res, next) {
    res.redirect('research_fields/page/1');
});

router.get('/page/:num', function(req, res, next) {
    /*db.query(`select * from research_fields`, function (error, fileds) {
        if(error){
            throw error;
        }
        research_fields_table = fields;
        rows = fields.coun
        res.render('index', {'research_fields_table': research_fields_table});
    });*/
    res.render('research_fields');
});

router.get('/write', function(req, res, next) {
    res.render('research_fields_write_page');
});

module.exports = router;