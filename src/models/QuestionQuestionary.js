const { Model, DataTypes } = require('sequelize');

class QuestionQuestionary extends Model {
    static init(sequelize) {
        super.init({
            question: DataTypes.STRING,
        }, {
            sequelize,
            modelName: 'question_questionary',
            paranoid: true
        })
    }
}

module.exports = QuestionQuestionary;