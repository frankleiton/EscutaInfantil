const { Model, DataTypes } = require('sequelize');

class FrequentlyQuestions extends Model {
    static init(sequelize) {
        super.init({
            questions: DataTypes.STRING,
            reply: DataTypes.STRING,
        }, {
            sequelize, 
            modelName: 'frequentlyquestions',
            paranoid: true
        })
    }

}

module.exports = FrequentlyQuestions;