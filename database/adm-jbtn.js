const mysql = require('mysql2');
const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    database: 'adm-jbtn-test',
    password: '',
});

module.exports = pool.promise();