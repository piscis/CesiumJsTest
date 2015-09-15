gulp        = require('gulp-help')(require('gulp'))
plug        = require('gulp-load-plugins')({ camelize: true })
runSequence = require 'run-sequence'

gulp.task 'build:backend', false, (cb)->
  runSequence(['typescript:backend'],cb)

gulp.task 'build:frontend', false, (cb)->
  runSequence(['static', 'webpack'],cb)

gulp.task 'build', false, (cb)->
  runSequence('clean',['build:backend', 'build:frontend'], cb)