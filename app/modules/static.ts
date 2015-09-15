/// <reference path="../../typings/tsd.d.ts" />

import express = require('express');


module.exports = (app:express.Application)=>{
    app.use('/', express.static(__dirname+'/../public'));
}