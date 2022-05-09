const { Model, DataTypes } = require('sequelize');

class ResponseBrainfitParent extends Model {
    static init(sequelize) {
        super.init({
            id: {
                type: DataTypes.INTEGER,
                primaryKey: true,
                autoIncrement: true,
                allowNull: false
            },
            response: DataTypes.BOOLEAN,
        }, {
            sequelize,
            modelName: 'response_brainfit_parent',
            paranoid: true
        })
    }
}

module.exports = ResponseBrainfitParent;