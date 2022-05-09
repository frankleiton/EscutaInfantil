const { Model } = require('sequelize');

class LogAcessParent extends Model {
    static init(sequelize) {
        super.init({
            
        }, {
            sequelize, 
            modelName: 'logAcessParent',
            paranoid: true
        })
    }

}

module.exports = LogAcessParent;