const Irdas = require('../models/Irdas');


module.exports = {
    async getAll(req, res) {
        const irdas = await Irdas.findAll();

        if (!irdas) {
            return res.status(404).json({irdas: 'irdas_not_found'})
        }

        return res.status(200).json(irdas);
    }
}