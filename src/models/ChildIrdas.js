const { Model, DataTypes } = require('sequelize');

class ChildIrdas extends Model {
    static init(sequelize) {
        super.init({
            id: {
                type: DataTypes.INTEGER,
                primaryKey: true,
                autoIncrement: true,
                allowNull: false
            },
            reference: DataTypes.STRING
        }, {
            sequelize,
            modelName: 'child_irdas',
            paranoid: true
        })
    }
}

module.exports = ChildIrdas;