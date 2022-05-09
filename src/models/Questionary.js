const { Model, DataTypes } = require('sequelize');

class Questionary extends Model {
    static init(sequelize) {
        super.init({
            name: DataTypes.STRING,
            month_application: DataTypes.INTEGER,
        }, {
            sequelize,
            modelName: 'questionary',
            paranoid: true
        })
    }
}

module.exports = Questionary;