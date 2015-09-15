gulp        = require('gulp-help')(require('gulp'))
plugins     = require('gulp-load-plugins')({ camelize: true })
del         = require 'del'
runSequence = require 'run-sequence'

gulp.task 'clean', false, (cb)->

  files = [
    './build/**'
    './build/*.*'
    './build/.*'
  ]

  del(files, cb)