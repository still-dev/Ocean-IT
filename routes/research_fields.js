var express = require('express');
var db = require('../config/db');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.redirect('research_fields/page/1');
});

router.get('/page/:num', function(req, res, next) {
    db.query(`select * from research_fields`, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('research_fields', {'research_fields_table': fields, 'page_num' : req.params.num});
    });
});

router.get('/detail/:num', function(req, res, next) {
    db.query(`select * from research_fields where rid = ?`, req.params.num, function (error, field) {
        if(error){
            throw error;
        }
        //console.log(field);
        res.render('research_fields_detail', {'field': field});
    });
});

router.get('/write', function(req, res, next) {
    res.render('research_fields_write_page');
});

module.exports = router;