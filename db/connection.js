const {Pool} = require('pg');
const db = new Pool({ 
    host: 'localhost',
    user: 'postgres',
    password: '123456Ta',
    database: 'products_db',
    port: 5432
});
module.exports = db;