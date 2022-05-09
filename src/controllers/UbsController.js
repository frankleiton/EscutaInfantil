const Ubs = require('../models/Ubs');
const City = require('../models/City');

module.exports = {
    async getAll(req, res) {
        try {
            const ubs = await Ubs.findAll();
            return res.status(200).json(ubs)
        } catch (error) {
            return res.status(404).json({ error: "ubs_not_found" })
        }
    },

    async store(req, res) {
        try {
            const { name, street, email, telefone, city_id } = req.body;

            const city = await City.findOne({
                where: {
                    id: city_id
                }
            })

            if (!city) {
                return res.status(404).json({ error: 'city_not_found' })
            }

            const ubs = await Ubs.create({ name, street, email, telefone })
            await ubs.setCity(city)

            return res.status(200).json(ubs)


        } catch (error) {
            return res.status(400).json({ error: 'Error on register ubs: ' + error });
        }
    },

    async remove(req, res) {
        try {
            const ubs = await Ubs.findByPk(req.params.id);
            if (!ubs) {
                return res.status(404).json({ error: 'ubs_not_found' })
            }

            ubs.destroy().then(success => {
                return res.status(200).json({ deleted: true, success: success });
            }).catch(err => {
                return res.status(404).json({ error: 'ubs_not_deleted', stack: err });
            })

        } catch (error) {
            return res.status(404).json({ error: 'error_on_delete', stack: error })
        }
    },

    async update(req, res) {
        try {
            const ubs = await Ubs.findByPk(req.params.id);
            if (!ubs) {
                return res.status(404).json({ error: 'ubs_not_found' });
            }

            ubs.update(req.body).then(data => {
                return res.status(200).json(data);
            }).catch(err => {
                return res.status(400).json({ error: 'ubs_not_edit', err });
            })
        } catch (error) {
            return res.status(400).json({ error: 'ubs_not_edit', error });
        }
    },

    async loadUbsByCity(rec, res) {
        try {
            const ubs = await Ubs.findAll({
                include: [
                    {
                        model: City,
                        where: {
                            id: rec.params.id
                        }
                    }
                ]
            });

            if (!ubs) {
                return res.status(404).json({ error: 'ubs_not_found' });
            }

            return res.status(200).json(ubs);

        } catch (error) {
            return res.status(400).json({ error: 'ubs_error', error });
        }
    }
}