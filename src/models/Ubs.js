const { Model, DataTypes } = require('sequelize');

class Ubs extends Model {
    static init(sequelize) {
        super.init({
            name:        {
                type: DataTypes.STRING,
                allowNull: false
            },
            street: DataTypes.STRING,
            email: DataTypes.STRING,
            telefone: DataTypes.STRING
        }, {
            sequelize,
            modelName: 'ubs',
            paranoid: true
        })
    }

}

module.exports = Ubs;