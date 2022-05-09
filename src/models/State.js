const { Model, DataTypes } = require('sequelize');

class State extends Model {
    static init(sequelize) {
        super.init({
            name: DataTypes.STRING,
        }, {
            sequelize,
            modelName: 'state',
            paranoid: true
        })
    }
}

module.exports = State;