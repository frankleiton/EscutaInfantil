const { Model, DataTypes } = require('sequelize');

class User extends Model {
  static init(sequelize) {
    super.init({
      name:                  {
        type: DataTypes.STRING,
        allowNull: false
    },
      email:          {
        type:DataTypes.STRING,
        unique: true,
        allowNull:false
      },
      cpf:            {
        type:DataTypes.STRING,
        unique: true,
        allowNull: false
      },
      password:              {
        type: DataTypes.STRING,
        allowNull: false
    },
      phone:                 {
        type: DataTypes.STRING,
        allowNull: false
    },
      active: {
        type: DataTypes.BOOLEAN,
        defaultValue: true
      },

    }, {
      sequelize,
      modelName: 'user',
      paranoid: true
    })
  }

}

module.exports = User;