const ChildIrdas = require('../models/ChildIrdas');
const Child = require('../models/Child');
const Irdas = require('../models/Irdas');

module.exports = { 

    async store(req, res) {

        const {child_id, irda_id, reference} = req.body;

        try {
            const response_child = await Child.findByPk(child_id)
            const response_irdas = await Irdas.findByPk(irda_id)
            
            if (response_child && response_irdas) {
                const response = await ChildIrdas.create({reference})
                await response.setIrda(response_irdas);   
                await response.setChild(response_child);   
                
                return res.status(200).json(response)
            }else{

                return res.status(404).json({ error: 'child_or_irdas_not_found' })
            }

        } catch (error) {
            return res.status(404).json({ error })
        }

    },

    async loadDataChildIrdas (req, res){
        
        try {
            const childIrda = await ChildIrdas.findAll()
            const irdas = await Irdas.findAll();

            var consultaIrda = []

            irdas.forEach(irda => {

                var cIrdas = irda; 
                cIrdas.dataValues['count_total'] = 0;

                childIrda.forEach(element => {

                    if (element.irdaId == irda.id) {
                        cIrdas.dataValues['count_total']++;
                    }

                });

                consultaIrda.push(cIrdas);
            });

            return res.status(200).json(consultaIrda)

        } catch (error) {
            return res.status(404).json({ error })
        }
    }
}