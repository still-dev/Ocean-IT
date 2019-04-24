var express = require('express');
var db = require('../config/db');
var multer = require('multer');
var upload = multer({
    dest : 'views/images/members/',
    limits : {fileSize : 5*1024*1024}
});
var router = express.Router();

/* GET users listing. */
router.get('/registration_member', function(req, res, next) {
    res.render('registration_member');
});

router.post('/registration_member', upload.single('file_upload'), function (req, res, next) {
    console.log(req.body);
    console.log(req.file);
});

module.exports = router;
