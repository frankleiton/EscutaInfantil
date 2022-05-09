const { Model, DataTypes } = require('sequelize');

class HealthCenter extends Model {
    static init(sequelize) {
        super.init({
            name:        {
                type: DataTypes.STRING,
                allowNull: false
            },
            descriptionDate: DataTypes.TEXT
        }, {
            sequelize, 
            modelName: 'healthcenter',
            paranoid: true
        })
    }

}

module.exports = HealthCenter;