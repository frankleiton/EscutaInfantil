const City = require('../models/City');
const State = require('../models/State');

module.exports = {

    async getAll(req, res) {
        
        const state_id = req.params.id;
        console.log(state_id);
        
        const cities = await City.findAll({
            where: {
                state_id : state_id
            },
            include: [State]
        });

        if (!cities || cities.length == 0) {
            return res.status(404).json({cities: 'state_not_have_cities'})
        }

        return res.status(200).json(cities);
    },

    async getCityById(req,  res){
        const id = req.params.id;
        console.log(id);

        const responseCityAndState = await City.findByPk(id, {
            include: [State]
        })

        if (responseCityAndState) {
            return res.status(200).json(responseCityAndState);
        }

        return res.status(404).json({cities: 'city_not_found'})
    }
}