const State = require('../models/State');


module.exports = {
    async getAll(req, res) {
        const states = await State.findAll();

        if (!states) {
            return res.status(404).json({state: 'states_not_found'})
        }

        return res.status(200).json(states);
    }
}