const { Model, DataTypes } = require('sequelize');

class ResponseQuestionChild extends Model {
    static init(sequelize) {
        super.init({
            id: {
                type: DataTypes.INTEGER,
                primaryKey: true,
                autoIncrement: true,
                allowNull: false
            },
            response: DataTypes.STRING,
        }, {
            sequelize,
            modelName: 'response_question_child',
            paranoid: true
        })
    }
}

module.exports = ResponseQuestionChild;