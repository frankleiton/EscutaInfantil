const { Model, DataTypes } = require('sequelize');

class Brainfit extends Model {
    static init(sequelize) {
        super.init({
            confirmation: DataTypes.TEXT,
            afirmation: DataTypes.BOOLEAN,
            Justification: DataTypes.TEXT,
        }, {
            sequelize,
            modelName: 'brainfit',
            paranoid: true
        })
    }

}

module.exports = Brainfit;