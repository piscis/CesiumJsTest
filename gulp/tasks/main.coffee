gulp        = require('gulp-help')(require('gulp'))
plugins     = require('gulp-load-plugins')({ camelize: true })
async       = require 'async'
runSequence = require 'run-sequence'


## Global notification
global.errOpts =
  catchErrors: false
  errorHandler: plugins.notify.onError("Error: <% if(typeof error != 'undefined' && error.message){%><%= error.message %><% }else{%><%= 'Error build source' %><% } %>")


gulp.task 'dev','Start development', (cb)->
  global.errOpts.catchErrors = true
  runSequence 'build','watch', cb