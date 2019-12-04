const path = require('path');

const express = require('express');
const bodyParser = require('body-parser');

const dosenRouter = require('./routes/dosen');
const penelitianRouter = require('./routes/penelitian');

const app = express();

app.use(bodyParser.urlencoded({extended:true}));
app.use(express.static(path.join(__dirname, 'public')));
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

app.set('views','views');
app.set('view engine','ejs');

app.use(dosenRouter);
app.use('/penelitian', penelitianRouter);

app.listen(3000);
console.log("http://localhost:3000");