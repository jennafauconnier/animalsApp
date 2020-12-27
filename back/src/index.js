const express = require('express');
const app = express();
const bodyParser = require('body-parser');


const homeRouter = require('./home/router');
const animalRouter = require('./animals/router');

// const multer = require('multer');
// const upload = multer({dest: '/uploads/'});

app.use('/static', express.static(__dirname + '/public'));

app.use(
  bodyParser.urlencoded({
    extended: true,
  }),
);

app.use((req, res, next) => {
  console.log(`${req.method} - ${req.url}`)
  next()
})

app.use(express.json());

app.use('/home', homeRouter);
app.use('/animals', animalRouter);


app.listen(7000, function(){
  console.log('This app is on port 7000')
});