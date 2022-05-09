const express = require('express');
const routes = express.Router();
const jwt = require('jsonwebtoken');

const UserController = require('./controllers/UserController');
const StateController = require('./controllers/StateContoller');
const CityController = require('./controllers/CityController');
const IrdasController = require('./controllers/IrdasController');
const ParentController = require('./controllers/ParentController');
const ChildController = require('./controllers/ChildController');
const UbsController = require('./controllers/UbsController');
const HealthCenter = require('./controllers/HealthCenterController');
const QuestionaryController = require('./controllers/QuestionaryController');
const FrequentlyQuestionsController = require('./controllers/FrequentlyQuestionsController');
const ChildIrdasController = require('./controllers/ChildIrdasController');
const ResponseQuestionChild = require('./controllers/ResponseQuestionChildController');
const ResponseBrainfitParent = require('./controllers/ResponseBrainfitParentController');

routes.get('/users', verifyToken, UserController.index);
routes.post('/users', UserController.store);
routes.put('/users/:id', UserController.updateUser);
routes.get('/users/:id', UserController.getUserById);
routes.post('/users/login', UserController.login);
routes.post('/verifyServer', UserController.verifyServer);

routes.get('/states', StateController.getAll); 
routes.get('/irdas', IrdasController.getAll); 
routes.get('/cities/:id', CityController.getAll); 
routes.get('/stateByCity/:id', CityController.getCityById); 

routes.get('/parent', ParentController.getParents);
routes.post('/parent', ParentController.store);
routes.get('/parent/:id', ParentController.getParentById);
routes.put('/parent/:id', ParentController.update);
routes.delete('/parent/:id', ParentController.deleteparent);
routes.get('/parent/count/parent/log', ParentController.countParentsLogByMonth);
routes.post('/parent/log/create', ParentController.countLogParentLogin);

routes.get('/ubs', UbsController.getAll);
routes.post('/ubs', UbsController.store);
routes.put('/ubs/:id', UbsController.update); 
routes.delete('/ubs/:id', UbsController.remove);
routes.get('/ubs/city/:id', UbsController.loadUbsByCity);

routes.get('/frequentlyQuestions', FrequentlyQuestionsController.getAll);
routes.post('/frequentlyQuestions', FrequentlyQuestionsController.store);
routes.put('/frequentlyQuestions/:id', FrequentlyQuestionsController.update); 
routes.delete('/frequentlyQuestions/:id', FrequentlyQuestionsController.remove);

routes.get('/healthCenter', HealthCenter.getAll);
routes.post('/healthCenter', HealthCenter.store);
routes.put('/healthCenter/:id', HealthCenter.edit); 
routes.delete('/healthCenter/:id', HealthCenter.remove);

routes.get('/child', ChildController.getAll);
routes.post('/child', ChildController.store);
routes.post('/child/buscar', ChildController.searchChildsFilter);
routes.get('/child/:id', ChildController.getChildById);
routes.put('/child/:id', ChildController.update);
routes.get('/child/parent/:id', ChildController.getChildsByParent);
routes.get('/child/parents/:id', ChildController.getChildsByUbs);
routes.get('/child/count/questionary', ChildController.countChildByPeriod);
routes.get('/child/count/realizouTan', ChildController.countChildsTan);
routes.post('/child/questionary/response', ChildController.getResponseQuestionsChild);

routes.get('/questionary/:month', QuestionaryController.getAllbyMonth); 
routes.get('/questionary/disponibility/:questionaryId/:childId', QuestionaryController.questionaryDisponibility); 

routes.post('/responseQuestionChild', ResponseQuestionChild.store);

routes.post('/responseBrainfitParent', ResponseBrainfitParent.store);
routes.post('/responseBrainfitParent/ranking', ResponseBrainfitParent.getRankingbrainfit);

routes.get('/brainfit/response', ResponseBrainfitParent.getQuestionsToResponse);

routes.post('/childirdas', ChildIrdasController.store)
routes.get('/childirdas', ChildIrdasController.loadDataChildIrdas)

function verifyToken(req, res, next) {
    const bearerHeader = req.headers['authorization'];
    if (typeof bearerHeader !== 'undefined') {

        jwt.verify(req.headers['authorization'].split(' ')[1], 'IMDIMD', function(err, decoded) {
            if (err) {
                res.sendStatus(403);
            }else{
                next();
            }
          });
    }else{
        //Forbidden
        res.sendStatus(403);
    }
}

module.exports = routes;