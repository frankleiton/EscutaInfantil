const { Model, DataTypes } = require('sequelize');

class Parent extends Model {
    static init(sequelize) {
        super.init({
            
        }, {
            sequelize,
            modelName: 'parent',
            paranoid: true
        })
    }
}

module.exports = Parent;