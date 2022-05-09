const ResponseQuestionChild = require("../models/ResponseQuestionChild")
const Parent = require('../models/Parent');
const Child = require('../models/Child');
const ChildIrdas = require('../models/ChildIrdas');
const Ubs = require('../models/Ubs');
const { Op } = require("sequelize");
const Irdas = require("../models/Irdas");
const Questionary = require('../models/Questionary')
const QuestionQuestionary = require('../models/QuestionQuestionary');
const User = require("../models/User");


module.exports = {

    async store(req, res) {

        try {
            const { name, cpf, date_nasc, address, phone, name_resp, tan_realizou, tan_resultado, tan_tipoExame, conduta, lat, long, parent_id, irdas } = req.body;
            const parent = await Parent.findByPk(parent_id)     
        
            if (!parent) {
                return res.status(404).json({ error: 'parent_not_found' })
            }
    
            const child = await Child.create({
                name,
                cpf,
                date_nasc,
                address,
                phone,
                name_resp,
                tan_realizou,
                tan_resultado,
                tan_tipoExame,
                conduta,
                lat,
                long
            })
    
            if (!child) {
                return res.status(400).json({ error: 'child_not_created' })
            }
    
            irdas.forEach(async (element) => {
                const response_child = await Child.findByPk(child.getDataValue("id"))
                const response_irdas = await Irdas.findByPk(element)
                const new_childIrdas = await ChildIrdas.create({reference: "insert_new"})
    
                await new_childIrdas.setIrda(response_irdas);   
                await new_childIrdas.setChild(response_child);   
            });
    
            await child.setParent(parent);
            
            return res.status(200).json(child)
        } catch (error) {
            return res.status(400).json({ error: error })
        }

       
    },

    async update(req, res){
        try {
            const child = await Child.findByPk(req.params.id);

            if (!child) {
                return res.status(400).json({ error: 'child_not_found' })
            }
            
            child.update(req.body).then(data => {
                console.log(data);
                return res.status(200).json('child_updated')
            })


        } catch (error) {
            return res.status(400).json({ error: 'Error on update child: ' + error });
        }
    },

    async getAll(req, res) {

        try {
            
            const childs = await Child.findAll({
                include: [
                    {
                        model: Parent,
                        include: [{
                            model: User
                        }]
                    }
                ]
            })
            
            if (!childs) {
                return res.status(404).json({ error: 'childs_not_found' })
            }
    
            return res.status(200).json(childs);
        } catch (error) {
            return res.status(400).json({ error: error })
        }

    },

    async getChildById(req, res) {
        try {
            const child = await Child.findByPk(req.params.id)

            if (!child) {
                return res.status(404).json({ error: 'child_not_found' })
            }

            const irdasChild = await ChildIrdas.findAll({
                where: {
                    child_id: child.id
                },
                include: [Irdas]
            })

            if (!irdasChild) {
                return res.status(404).json({ error: 'child_not_found' })
            }

            return res.status(200).json({child: child, irdaschild:irdasChild});

        } catch (error) {
            return res.status(400).json({ error: error })
        }
    },

    async getChildsByUbs(req, res) {

        try {
            
            const childs = await Child.findAll({
                where: {
                    ubId: req.params.id
                }
            })
    
            if (!childs) {
                return res.status(404).json({ error: 'child_not_found' })
            }
    
            return res.status(200).json(childs);

        } catch (error) {
             return res.status(400).json({ error: error })
        }


    },

    async getChildsByParent(req, res) {

        try {
            
            const childs = await Child.findAll({
                where: {
                    parent_id: req.params.id
                }
            })
    
            if (!childs) {
                return res.status(404).json({ error: 'child_not_found' })
            }
    
            return res.status(200).json(childs);

        } catch (error) {
            return res.status(400).json({ error: error })
        }


    },

    async countChildByPeriod(req, res) {
        try {

            var date = new Date();

            const responseQuestions = await ResponseQuestionChild.findAll({
                where: {
                    created_at:
                        { [Op.between]: [new Date(new Date() - 86400000 * date.getDate()), new Date()] }
                }
            })

            return res.status(200).json({ quantidade: responseQuestions.length });

        } catch (error) {
            return res.status(400).json({ error: error })
        }
    },

    async countChildsTan(req, res) {
        try {
            const responseChilds = await Child.findAll({
                where: {
                    tan_realizou: "SIM"
                }
            })

            const responseChildsPassou = await Child.findAll({
                where: {
                    tan_resultado: "SIM"
                }
            })

            return res.status(200).json({ quantidadeRealizou: responseChilds.length, quantidadePassou: responseChildsPassou.length });

        } catch (error) {
            return res.status(400).json({ error: error })
        }
    },

    async searchChildsFilter(req, res) {

        try {
            
            const { nameChild, realizouTam, passouTam, city_id } = req.body
    
            let where = {};
            let whereParent = {}
    
            if (nameChild != '') {
                where['name'] = { [Op.like]: '%' + nameChild + '%' }
            }
    
            if (realizouTam != "") {
                where['tan_realizou'] = realizouTam
            }
    
            if (passouTam != "") {
                where['tan_resultado'] = passouTam
            }

            if(city_id != ""){
                whereParent['city_id'] = city_id
            }
    
            const childs = await Child.findAll({ include: [{
                model: Parent, 
                where: {}
            }], where })
    
            if (!childs) {
                return res.status(404).json({ error: 'childs_not_found' })
            }
    
            return res.status(200).json(childs);
        } catch (error) {
            return res.status(400).json({ error: 'Erro ao aplicar filtro' })
        }



    },

    async getResponseQuestionsChild( req, res ) {

        try {
            
            const {child_id } = req.body;
    
            var questions = [];
    
            let responseQuestionChild = await ResponseQuestionChild.findAll({
                include: [QuestionQuestionary],
                where: {
                    child_id : child_id
                }
            })
    
            responseQuestionChild = responseQuestionChild.map(element => element.toJSON())
            for await (let element of responseQuestionChild) {
                questions.push(element.question_questionary.questionaryId)
            }
    
            let questionsArray = []
    
            for await (let element of new Set(questions)) {
                questionsArray.push(await Questionary.findByPk(element))
            }
    
            questionsArray.forEach((element, index) => {
                questionsArray[index].dataValues["resposta"] = responseQuestionChild.filter( q => q.question_questionary.questionaryId == element.id)
            });
          
            console.log(questionsArray);
    
            return res.status(200).json(questionsArray)
        } catch (error) {
            return res.status(400).json({ error: error })
        }
     
    }   

}