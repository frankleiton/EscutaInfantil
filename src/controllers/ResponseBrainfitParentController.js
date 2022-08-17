const Sequelize = require('sequelize');

const Response_brainfit_parent = require('../models/ResponseBrainfitParent');
const Brainfit = require('../models/Brainfit');
const Parent = require('../models/Parent');
const Ubs = require("../models/Ubs");
const User = require("../models/User");

const { Op } = require("sequelize");

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}

module.exports = {
  async store(req, res) {
    const { parent_id, brainfit_id, resposta } = req.body;

    try {
      const response_parent = await Parent.findByPk(parent_id);
      const Response_brainfit = await Brainfit.findByPk(brainfit_id);

      if ((response_parent, Response_brainfit)) {
        const response_brainfit_parent = await Response_brainfit_parent.create({
          response: resposta,
        });

        await response_brainfit_parent.setParent(parent_id);
        await response_brainfit_parent.setBrainfit(brainfit_id);

        return res.status(200).json(response_brainfit_parent);
      } else {
        return res.status(400).json({ error: "parent_or_brainfit_not_found" });
      }
    } catch (error) {
      return res.status(400).json({ error, erro: "erro ao salvar", resposta });
    }
  },

  async getQuestionsToResponse(req, res) {
    try {
      const brainfits = await Brainfit.findAll();

      var new_array_brainfits = [];

      for (let i = 0; i < 1; i++) {
        var randon = getRandomInt(0, brainfits.length);

        new_array_brainfits.push(brainfits[randon]);

        brainfits.splice(randon, 1);
      }

      return res.status(200).json(new_array_brainfits);
    } catch (error) {
      return res.status(400).json({ error });
    }
  },

  async getRankingbrainfit(req, res) {
    const { cityId } = req.body;

    const brainfits = await Response_brainfit_parent.findAndCountAll({
      include: [
        {
          model: Brainfit,
          required: true,
          where: {
            afirmation: {
              [Op.eq]: Sequelize.col("response"),
            },
          },
          attributes: [],
        },
        {
          model: Parent,
          required: true,
          include: [
            {
              model: User,
              required: true,
              attributes: ["name"],
            },
            {
              model: Ubs,
              where: {
                city_id: cityId,
              },
            },
          ],
        //   where: {
        //     city_id: cityId,
        //   },
        },
      ],
      group: ["parent_id"],
      limit: 3,
    });

    return res.status(200).json(brainfits);
  },
};