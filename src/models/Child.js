const { Model, DataTypes } = require('sequelize');

class Child extends Model {
    static init(sequelize) {
        super.init({
            name:       {
                type: DataTypes.STRING,
                allowNull: false
            },
            cpf:        {
                type:DataTypes.STRING,
                unique: true,
                allowNull: false
              },
            date_nasc:  DataTypes.DATE,
            address:           {
                type: DataTypes.STRING,
                allowNull: false
            },
            phone:             {
                type: DataTypes.STRING,
                allowNull: false
            },
            name_resp:         {
                type: DataTypes.STRING,
                allowNull: false
            },
            tan_realizou:        {
                type: DataTypes.STRING,
                allowNull: false
            },
            tan_resultado:        {
                type: DataTypes.STRING,
                allowNull: false
            },
            tan_tipoExame:        {
                type: DataTypes.STRING,
                allowNull: false
            },
            conduta:           {
                type: DataTypes.STRING,
                allowNull: false
            },
            lat:        DataTypes.STRING,
            long:       DataTypes.STRING,
        }, {
            sequelize, 
            modelName: 'child',
            paranoid: true
        })
    }

}

module.exports = Child;