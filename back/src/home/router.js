const express = require('express');

const homeRouter =  express.Router();
const controller = require('./controller');

homeRouter.get('/', controller.getListAnimals);

module.exports = homeRouter;