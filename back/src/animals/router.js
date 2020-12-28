const express = require('express');

const animalRouter =  express.Router();
const controller = require('./controller');

animalRouter.get('/:id', controller.getAnimal);


module.exports = animalRouter;