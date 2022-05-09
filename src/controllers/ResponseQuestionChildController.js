const ResponseQuestionChild = require('../models/ResponseQuestionChild');
const QuestionQuestionary = require('../models/QuestionQuestionary');
const Child = require('../models/Child');

module.exports = { 

    async store(req, res) {

        const {child_id, respostas} = req.body;
        var childRegister = [];
        try {
            const response_child = await Child.findByPk(child_id)

            for await (let element of respostas) {

                const response_questionQuestionary = await QuestionQuestionary.findByPk(element.question_questionary_id)
                
                if (response_child && response_questionQuestionary) {
                    const responseQuestionChild = await ResponseQuestionChild.create({response: element.resposta})
                    childRegister.push(responseQuestionChild)
                    await responseQuestionChild.setChild(response_child);   
                    await responseQuestionChild.setQuestion_questionary(response_questionQuestionary);   
                    
                    
                }else{
                    return res.status(400).json({ error: 'child_or_question_not_found' })
                }
            }

            const beforeResponse = await ResponseQuestionChild.findAll({
                include:[QuestionQuestionary],
                where: {
                    child_id: child_id
                }
            })

            if (beforeResponse.length > childRegister.length) {
                if (beforeResponse[beforeResponse.length - (childRegister.length + 1)].getDataValue('response') == 'nao'
                    || beforeResponse[beforeResponse.length - (childRegister.length + 2)].getDataValue('response') == 'nao') {
                    console.log('TEM RESPOSTA NAO ANTES');
                    return res.status(200).json({childRegister, beforeResponse,  prevNot: true})
                }
            }

            
            return res.status(200).json({childRegister, beforeResponse,  prevNot: false})

        } catch (error) {
            return res.status(400).json({ error })
        }

    },

}