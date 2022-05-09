const Sequelize = require('sequelize');
const dbConfig = require('../config/database');
const connection = new Sequelize(dbConfig);

//REQUIRE MODELS
const ResponseQuestionChild = require('../models/ResponseQuestionChild');
const ResponseBrainfitParent = require('../models/ResponseBrainfitParent');
const FrequentlyQuestions = require('../models/FrequentlyQuestions');
const QuestionQuestionary = require('../models/QuestionQuestionary');
const LogAcessParent = require('../models/LogAcessParent');
const HealthCenter = require('../models/HealthCenter');
const Questionary = require('../models/Questionary');
const Permission = require('../models/Permission');
const ChildIrdas = require('../models/ChildIrdas');
const Brainfit = require('../models/Brainfit');
const Parent = require('../models/Parent');
const State = require('../models/State');
const Irdas = require('../models/Irdas');
const Child = require('../models/Child');
const User = require('../models/User');
const City = require('../models/City');
const Ubs = require('../models/Ubs');

//INIT CONNECTIONS
ResponseQuestionChild.init(connection)
ResponseBrainfitParent.init(connection)
FrequentlyQuestions.init(connection)
QuestionQuestionary.init(connection)
LogAcessParent.init(connection)
HealthCenter.init(connection)
Questionary.init(connection)
Permission.init(connection)
ChildIrdas.init(connection)
Brainfit.init(connection)
Irdas.init(connection)
State.init(connection)
Child.init(connection)
Parent.init(connection)
User.init(connection)
City.init(connection)
Ubs.init(connection)

//id de permissao vai para usuario
Permission.hasMany(User);
User.belongsTo(Permission);
Permission.sync()

//id de usuario vai para Parent
User.hasMany(Parent);
Parent.belongsTo(User);
User.sync()

//id de Parent vai para crianca
Parent.hasMany(Child);
Child.belongsTo(Parent);

//id de cidade vai para Parent
City.hasMany(Parent);
Parent.belongsTo(City);

//id de Parent vai para LOG
Parent.hasMany(LogAcessParent);
LogAcessParent.belongsTo(Parent);

//id de ubs vai para Parent
Ubs.hasMany(Parent);
Parent.belongsTo(Ubs);

//id de ubs vai para criança
// Ubs.hasMany(Child);
// Child.belongsTo(Ubs);

//id de estado vai para cidade
State.hasMany(City);
City.belongsTo(State);
State.sync()

//id de cidade vai para ubs
City.hasMany(Ubs);
Ubs.belongsTo(City);
City.sync()
Ubs.sync()

//id do crianca vai para ChildIrdas
Child.hasMany(ChildIrdas);
ChildIrdas.belongsTo(Child);

//id do irdas vai ChildIrdas
Irdas.hasMany(ChildIrdas);
ChildIrdas.belongsTo(Irdas);

//id do crianca vai para ResponseQuestionChild
Child.hasMany(ResponseQuestionChild);
ResponseQuestionChild.belongsTo(Child);

Child.sync()
Irdas.sync()
ChildIrdas.sync()

//id do questioario vai para questao do questionario
Questionary.hasMany(QuestionQuestionary);
QuestionQuestionary.belongsTo(Questionary);

//id do QuestionQuestionary vai para ResponseQuestionChild
QuestionQuestionary.hasMany(ResponseQuestionChild);
ResponseQuestionChild.belongsTo(QuestionQuestionary);

//id do Parent vai para ResponseBrainfitParent
Parent.hasMany(ResponseBrainfitParent);
ResponseBrainfitParent.belongsTo(Parent);

//id do Brainfit vai para ResponseBrainfitParent
Brainfit.hasMany(ResponseBrainfitParent);
ResponseBrainfitParent.belongsTo(Brainfit);



Parent.sync()
Brainfit.sync()
ResponseQuestionChild.sync()
ResponseBrainfitParent.sync()
Questionary.sync()
QuestionQuestionary.sync()
FrequentlyQuestions.sync()
LogAcessParent.sync()
HealthCenter.sync()

module.exports = connection;