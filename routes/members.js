var express = require('express');
var db = require('../config/db');
var multer = require('multer');
var path = require('path');
var fs = require('fs');
var local_filename;
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'views/images/members/');
    },
    filename: function (req, file, cb) {
        local_filename = path.basename(file.originalname, path.extname(file.originalname)) + '_' + Date.now() + path.extname(file.originalname);
        cb(null, local_filename);
    }
});
var upload = multer({
    storage : storage,
    limits : {fileSize : 5*1024*1024}
});

var router = express.Router();

/* GET users listing. */
router.get('/', function (req, res, next) {
    var members_table;
    db.query(`select * from members`, function (error, members) {
        if(error){
            throw error;
        }
        members_table = members;
        res.render('members', {'members_table': members_table});
    });
});

router.get('/registration_member', function(req, res, next) {
    res.render('registration_member');
});

router.post('/registration_member', upload.single('file_upload'), function (req, res, next) {
    var body = req.body;

    var insert_query_members = `INSERT INTO members set ?`;
    var insert_query_career_infomations = `INSERT INTO career_informations (mid, affiliation, major, degree) VALUES ?`;

    if(req.file === undefined){
        local_filename = 'default-profile-image.png'
    }

    var params_members = {
      mid: '0',
      name_ko: body.name_ko,
      name_en: body.name_en,
      affiliation: body.c_affiliation,
        position: body.c_position,
        interphone: body.c_interphone,
        email: body.email,
        profile_img: local_filename
    };

    var params_career_informations = [];

    db.query(insert_query_members, params_members, function (err, rows, fields) {
        if(err){
            console.log(err);
        }else{
            console.log(body.degree_info);
            if(body.degree_info !== undefined){
                for (var i in body.degree_info) {
                    var param_degree_info = [
                        rows.insertId,
                        body.degree_info[i].affiliation,
                        body.degree_info[i].major,
                        body.degree_info[i].degree
                    ];
                    params_career_informations.push(param_degree_info);
                }
                db.query(insert_query_career_infomations, [params_career_informations], function (err, rows, fields) {
                    if(err){ //mysql 오류 발생 시
                        console.log(err);
                    }else{  //성공
                        params_career_informations = []; // 배열 초기화
                        res.redirect('/members/registration_member');
                    }
                });
            }else{
                res.redirect('/members/registration_member');
            }
        }
    });
});

router.get('/member_detail/:mid', function (req, res, next) {

    var select_query_members = `select * from members where mid = ?`;
    var select_query_degree = `SELECT * FROM career_informations where mid = ?`;

    db.query(select_query_members, req.params.mid, function (error, member) {
        if(error){
            throw error;
        }
        db.query(select_query_degree, req.params.mid, function (error, degree) {
            if(error){
                throw error;
            }

            console.log(member[0]);
            console.log(degree[1]);

            res.render('member_detail', {'member_info':member, 'member_degree':degree});
        });
    });
});

router.get('/delete_member/:mid/:profile_img', function(req, res, next) {
    var delete_query_members = `DELETE FROM members WHERE mid = ?`;
    var delete_query_career_informations = `DELETE FROM career_informations WHERE mid = ?`;
    db.query(delete_query_members, req.params.mid, function (err, rows, fields){
        if(err){
            console.log(err);
        }else{
            db.query(delete_query_career_informations, req.params.mid, function (err, rows, fields){
                if(err){
                    console.log(err);
                }else{
                    console.log(rows);
                    if(req.params.profile_img !== 'default-profile-image.png'){ // 기본 프로필 이미지가 아닌 경우
                        fs.exists('./views/images/members/' + req.params.profile_img, function (exists) {
                            if(exists){
                                fs.unlink('./views/images/members/' + req.params.profile_img, function (err) {
                                    if(err){
                                        console.log(err);
                                    }else {
                                        console.log('successfully deleted file name = ' + req.params.profile_img);
                                        res.redirect('/members');
                                    }
                                })
                            }
                        });
                    }else
                        res.redirect('/members');
                }
            });
        }
    });
});

module.exports = router;
