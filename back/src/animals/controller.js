const knex = require('../db')


const getAnimal = async(req, res) => {
  console.log('getAnimal', req.params)
    try {
      const animals = await knex('Animal')
        .join('Race', 'Animal.race_id', '=', 'Race.id')
        .select('Animal.id', 'Animal.nom', 'Race.name', 'Animal.date_naissance', 'Animal.sexe', 'Animal.image_url')
        .where('Animal.id', '=', req.params.id);
        if (animals.length) {
          res.status(200).send(animals);
        } else {
          res.status(404).send();
        }

      } catch (error) {
        res.status(500).send(error);
      }

}


module.exports = {
    getAnimal
};