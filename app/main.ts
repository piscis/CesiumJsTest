/// <reference path="../typings/tsd.d.ts" />

import express = require('express');
import http = require('http');

var viewRenderer = require('ejs-mate');
var app : express.Express = express();

// Modules
require('./modules/static')(app);

// Routing
/*
app.get('/', (req:express.Request, res:express.Response, next:Function)=>{
    res.send('foo');
});
*/

var server:http.Server = app.listen(3000, function () {
    var host = server.address().address;
    var port = server.address().port;

    console.log('Example app listening at http://%s:%s', host, port);
});