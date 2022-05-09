const FrequentlyQuestions = require('../models/FrequentlyQuestions');

module.exports = {
    async getAll(req, res) {
        try {
            const frequentlyQuestions = await FrequentlyQuestions.findAll();        
            return res.status(200).json(frequentlyQuestions)
        } catch (error) {
            return res.status(404).json({error: "not_founds"})
        }
    },

    async store(req, res){
        try {
            const { questions, reply } = req.body;

            const frequentlyQuestions = await FrequentlyQuestions.create({questions, reply})
            
            if (!frequentlyQuestions) {
                return res.status(200).json({ error: 'frequentlyQuestions_not_created' })
            }
            
            return res.status(200).json({error: '', frequentlyQuestions})

        } catch (error) {
            return res.status(400).json({ error: 'Error on register frequentlyQuestions: ' + error });
        }
    },

    async remove(req, res) {
        try {
            const frequentlyQuestions = await FrequentlyQuestions.findByPk(req.params.id);
            
            if (!frequentlyQuestions) {
                return res.status(404).json({error: 'frequentlyQuestions_not_found'})
            }

            frequentlyQuestions.destroy().then( success => {
                return res.status(200).json({ deleted: true, success: success });
            }).catch(err => {
                return res.status(404).json({ error: 'frequentlyQuestions_not_deleted', stack: err });
            })

        } catch (error) {
            return res.status(404).json({error: 'error_on_delete', stack: error})
        }
    },

    async update(req, res){
        try {
            const frequentlyQuestions = await FrequentlyQuestions.findByPk(req.params.id);
            if (!frequentlyQuestions) {
                return res.status(404).json({ error: 'frequentlyQuestions_not_found' });
            }

            frequentlyQuestions.update(req.body).then( data => {
                return res.status(200).json(data);
            }).catch(err => {
                return res.status(400).json({ error: 'frequentlyQuestions_not_edit', err });
            })
        } catch (error) {
            return res.status(400).json({ error: 'frequentlyQuestions_not_edit', error });
        }
    }
}