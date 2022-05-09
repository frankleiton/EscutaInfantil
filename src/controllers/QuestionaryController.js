const Questionary = require('../models/Questionary');
const QuestionQuestionary = require ('../models/QuestionQuestionary');
const ResponseQuestionChild = require('../models/ResponseQuestionChild');

module.exports = {

    async getAllbyMonth(req, res) {

        try {
            
            const questionary = await Questionary.findOne({
                where: {
                    month_application : req.params.month
                }
            })
    
            const questions = await QuestionQuestionary.findAll({
                where: {
                    questionary_id: questionary.id
                }
            })
            
            if (!questionary || !questions) {
                return res.status(404).json({ error: 'questionary_not_found' })
            }
    
            return res.status(200).json({questionary, questions});

        } catch (error) {
            return res.json({ error: 'questionary_not_found' })
        }
        

    },

    async questionaryDisponibility(req, res){
        try {

            const question = await QuestionQuestionary.findOne({
                where: {
                    questionary_id: req.params.questionaryId
                }
            })

            console.log(question.dataValues);

            const responseQuestionQuestionary = await ResponseQuestionChild.findOne({
                where: {
                    child_id: req.params.childId,
                    question_questionary_id: question.dataValues.id
                }
            })  

            console.log(responseQuestionQuestionary);

            if (question && responseQuestionQuestionary) {

                return res.json({error: '', disponibility: false })

            }else{

                return res.json({error: '', disponibility: true })
                
            }
            
        } catch (error) {
            return res.json({error: 'error_critical', disponibility: true })
        }
    } 

}