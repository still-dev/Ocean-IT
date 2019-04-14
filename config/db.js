// 데이터베이스 기본 설정 파일
var mysql = require('mysql');
var db = mysql.createConnection({
    host     : 'localhost', // 외부에서 db 접속 시 localhost 가 아닌 서버pc의 ip 입력
    user     : 'root',
    password : 'ocean',
    database : 'Ocean_IT'
});

db.connect(); //데이터베이스 연결
module.exports = db;