const knex = require('../db')

const getListAnimals = async(req, res) => {
    console.log('getListAnimals')
    try {
        const viewAnimals = await knex('Animal')
        .join('Race', 'Animal.race_id', '=', 'Race.id')
        .select('Animal.id', 'Animal.nom', 'Race.name as raceName')
        console.log(viewAnimals)
        res.status(200).send(viewAnimals);
      } catch (error) {
        res.status(500).send(error);
      }
};



module.exports = {
    getListAnimals
};