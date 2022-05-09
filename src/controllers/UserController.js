const Sequelize = require('sequelize');
const User = require('../models/User');
const Parent = require('../models/Parent');
const Permission = require('../models/Permission');
const jwt = require('jsonwebtoken');
const Ubs = require('../models/Ubs');

module.exports = {
  async index(req, res) {
    try {
      const users = await User.findAll({ include: Permission });
      return res.json(users);
    } catch (error) {
      return res.status(404).json({ error: 'users_not_found' });
    }
   
  },

  async getUserById(req, res) {
    try {
      const user = await User.findByPk(req.params.id, { include: Permission });
      if (!user) {
        return res.status(404).json({ error: 'user_not_found' });
      }
      return res.status(200).json(user);
    } catch (error) {
      return res.status(404).json({ error: 'user_not_found' });
    }
    
  },

  async updateUser(req, res) {
    try {
      const user = await User.findByPk(req.params.id, { include: Permission });

      if (!user) {
        return res.status(404).json({ error: 'user_not_found' });
      }

      user.update(req.body).then(data => {
        return res.status(200).json(data);
      }).catch(err => {
        return res.status(400).json({ error: 'user_not_edit', err });
      })

    } catch (error) {
      return res.status(400).json({ error: 'user_not_edit', error });
    }

  },

  async store(req, res, flag = 0) {

    try {
      const { name, email, password, cpf, phone, active, permission_id } = req.body;

      const permission = await Permission.findOne({
        where: {
          id: permission_id
        }
      })

      if (!permission) {
        return res.status(404).json({ error: 'permission_not_found' });
      }

      const user = await User.create({ name, password, email, cpf, phone, active });
      await user.setPermission(permission);

      //retorna OBJ
      if (flag > 0) {
        return user;
      }

      return res.json(user);

    } catch (error) {

      return res.status(400).json({ error: 'Error on register user: ' + error });

    }

  },

  async delete(req, res) {
    const user = await User.findByPk(req.params.id, { include: Permission });

    if (!user) {
      return res.status(404).json({ error: 'user_not_found' });
    }

    user.destroy().then(success => {
      return res.status(200).json({ deleted: true });
    }).catch(err => {
      return res.status(404).json({ error: 'user_not_deleted' });
    })
  },

  async login(req, res) {
    const { email = '', cpf = '', password } = req.body;

    const user = await User.findOne({
      where: {
        [Sequelize.Op.or]: [{
          email
        }, {
          cpf
        }]
      }
    })

    if (!user) {
      return res.status(400).json({ error: 'Usuário não encontrado' });
    }

    if (user.password !== password ) {
      return res.status(400).json({ error: 'Senha incorreta' });
    }

    var token = jwt.sign({
      data: { id: user.id, nome: user.name, email: user.email }
    }, 'Agente3scuta@20', { expiresIn: '30d' });

    const parent = await Parent.findOne({
      where: {user_id: user.id},
      include: [Ubs]
    })


    if (parent && user.active) {
      res.json({ logou: 'true', token: token, user: user, parent: parent })
      return;
    }else{
      console.log(user);
      if (user && user.permissionId == 1 && user.active) {
        return res.status(200).json({ logou: 'true', token: token, user: user })
      }else{
        return res.status(400).json({ error: 'Usuario não autorizado' });
      }
    }
    
    //return res.status(200).json({ logou: 'true', token: token, user: { id: user.id, nome: user.name, email: user.email } })

  },

  verifyServer(req, res){

      return res.status(200).json({ on: true });

  }
};