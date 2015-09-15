gulp   = require('gulp-help')(require('gulp'))
plug   = require('gulp-load-plugins')({ camelize: true })

gulp.task 'watch', false, ()->
  gulp.watch('app/public/**/*.*', ['build:frontend']);
