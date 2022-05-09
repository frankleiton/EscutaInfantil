const express = require('express');
const routes = require('./routes');
const cors = require('cors');
var https = require('https'); 
var path = require('path');
var fs = require('fs');

require('./database');
const app = express();

// var jsonPath_cert = path.join(__dirname, './', 'certs/cert.pem'); 
// var jsonPath_key = path.join(__dirname, './', 'certs/cert.pem'); 


var options = {
   key: fs.readFileSync('/etc/letsencrypt/live/www.escutainfantil.online/privkey.pem', 'utf8'),
   cert: fs.readFileSync('/etc/letsencrypt/live/www.escutainfantil.online/cert.pem', 'utf8'),
   ca: fs.readFileSync('/etc/letsencrypt/live/www.escutainfantil.online/chain.pem', 'utf8')
}

var secure = https.createServer(options, app); // for express

app.use(cors({
    origin: '*'
}));

app.use(express.json());
app.use(routes);

secure.listen(3001, function() {
    console.log('localhost started on', 3001)
})

//app.listen(3001, () => console.log('Server started on port 3001'));