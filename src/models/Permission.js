const { Model, DataTypes } = require('sequelize');

class Permission extends Model {
  static init(sequelize) {
    super.init({
      code: DataTypes.STRING,
      name: DataTypes.STRING,
    }, {
      sequelize,
      modelName: 'permission',
      paranoid: true
    })
  }
}

module.exports = Permission;