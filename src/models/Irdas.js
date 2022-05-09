const { Model, DataTypes } = require('sequelize');

class Irdas extends Model {
    static init(sequelize) {
        super.init({
            irdas: DataTypes.STRING,
        }, {
            sequelize, 
            modelName: 'irdas',
            paranoid: true
        })
    }

}

module.exports = Irdas;