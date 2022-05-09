const Parent = require("../models/Parent");
const LogAcessParent = require("../models/LogAcessParent")
const User = require("../models/User");
const Permission = require('../models/Permission');
const Ubs = require("../models/Ubs");

const { Op } = require("sequelize");
const City = require("../models/City");

module.exports = {

    async store( req, res ) {

        try {
            const { name, email, password, cpf, phone, active, ub_id, city_id } = req.body;

            const permission = await Permission.findByPk(2);

            var ubs = null;

            if (!permission) {
                return res.status(404).json({ error: 'permission_not_found' });
            }

            const city = await City.findByPk(city_id);

            if (!city) {
                return res.status(404).json({ error: 'city_not_found' });
            }

            if (ub_id != '0') {
                ubs = await Ubs.findByPk(ub_id)
            }

            const user = await User.create({ name, password, email, cpf, phone, active });

            if (!user) {
                return res.status(404).json({ error: 'user_not_created' });
            }

            const parent = await Parent.create();
            
            if (!parent) {
                return res.status(404).json({ error: 'parent_not_created' });
            }

            await user.setPermission(permission);

            await parent.setUser(user);

            if (ub_id != '0') {
                await parent.setUb(ubs);
            }
            await parent.setCity(city);

            return res.json({user, error:''});

        } catch (error) {
            return res.status(200).json({ error: 'Error on register user: ' + error });
        }

        
    },

    async update(req, res){
        try {
            const parent = await Parent.findByPk(req.params.id);
            const user = await User.findByPk(parent.userId)

            if (!parent) {
                return res.status(404).json({error: 'parent_not_found'});
            }

            if (!user) {
                return res.status(404).json({error: 'user_not_found'});
            }
        
            parent.update(req.body.parent)
            user.update(req.body.user)

            return res.status(200).json('user_updated')

        } catch (error) {
            return res.status(400).json({ error: 'Error on update parent: ' + error });
        }
    },
     
    async getParents(req, res) {
        try {
            const parents = await Parent.findAll({ include: [User, Ubs, City] });
            return res.json(parents);
        } catch (error) {
            return res.status(400).json({
                error: 'Erro ao buscar parentes' + error
            })
        }
    },

    async getParentById(req, res){
        try {
            const parent = await Parent.findByPk(req.params.id, {include:[User, Ubs, City]})
            if (!parent) {
                return res.status(404).json({error: 'parent_not_found'})
            }

            return res.status(200).json(parent);
        } catch (error) {
            return res.status(400).json({error: 'error_request_router'})
        }
    },
    
    async deleteparent(req, res) {
        try {
            const parent = await Parent.findByPk(req.params.id, {include:User})

            if (!parent) {
                return res.status(404).json({error: 'parent_not_found'})
            }

            await parent.destroy();

            return res.status(200).json(parent);

        } catch (error) {
            return res.status(400).json({error: 'error_request_router'})
        }
    },

    async countParentsLogByMonth(req, res) {
        try {
            var date = new Date();

            const parent = await LogAcessParent.findAll({ where:{
                created_at:
                {[Op.between]: [new Date(new Date() - 86400000 * date.getDate()), new Date()]}
            }})


            if (!parent) {
                return res.status(404).json({error: 'parent_not_found'})
            }

            return res.status(200).json({quantidade: parent.length});

        } catch (error) {
            return res.status(200).json({error: 'error_request_router'})
        }
    },

    async countLogParentLogin(req, res) {

        try {
            const { parent_id } = req.body;
            const parent = await Parent.findByPk(parent_id, {include:[User, City]});
            const ParentLog = await LogAcessParent.create();
            ParentLog.setParent(parent);

            return res.json({ParentLog, error:''});
        } catch (error) {
            return res.status(200).json({error: 'error_request_router'})
        }
        


    }

    

}