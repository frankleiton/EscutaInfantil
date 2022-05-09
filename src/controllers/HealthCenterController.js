const HealthCenter = require('../models/HealthCenter');

module.exports = {

    async getAll(req, res) {
         
        try {
            const response = await HealthCenter.findAll();
            if (!response) {
                return res.status(404).json({error: 'healthcenter_not_found'})
            }
            return res.status(200).json(response);

        } catch (error) {
            return res.status(400).json({ error: 'Error on get health center: ' + error });
        }
        
    },
    
    async store(req, res) {

        try {
            const {name, descriptionDate} = req.body;
            const response = await HealthCenter.create({name, descriptionDate});

            if (response) {
                return res.status(200).json(response);
            }
        } catch (error) {
            return res.status(400).json({ error: 'Error on register health center: ' + error });
        }
        
    },

    async edit(req, res) {
        try {
            const healthCenter = await HealthCenter.findByPk(req.params.id);
            if (!healthCenter) {
                return res.status(404).json({ error: 'healthcenter_not_found' });
            }

            healthCenter.update(req.body).then( data => {
                return res.status(200).json(data);
            }).catch(err => {
                return res.status(400).json({ error: 'healthcenter_not_edited', err });
            })

        } catch (error) {
            return res.status(400).json({ error: 'Error on edit health center: ' + error });
        }
    },

    async remove(req, res) {
        try {
            const healthCenter = await HealthCenter.findByPk(req.params.id);
            if (!healthCenter) {
                return res.status(404).json({error: 'healthcenter_not_found'})
            }

            healthCenter.destroy().then( success => {
                return res.status(200).json({ deleted: true, success: success });
            }).catch(err => {
                return res.status(404).json({ error: 'healthcenter_not_deleted', stack: err });
            })

        } catch (error) {
            return res.status(400).json({ error: 'Error on remove health center: ' + error });
        }
    },

    
}