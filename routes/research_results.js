var express = require('express');
var db = require('../config/db');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.redirect('research_results/page/1')
});

router.get('/page/:num', function(req, res, next) {
    db.query(`select * from research_fields`, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('research_results', {'research_fields_table': fields, 'page_num' : req.params.num});
    });
    //res.render('research_fields');
});

router.get('/write', function(req, res, next) {
    res.render('research_results_write_page');
});

module.exports = router;