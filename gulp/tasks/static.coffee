gulp        = require('gulp-help')(require('gulp'))
plug        = require('gulp-load-plugins')({ camelize: true })
runSequence = require 'run-sequence'


gulp.task 'static:cesium', false, ()->

  files = [
    'bower_components/cesium/Build/Cesium/**/*'
  ]

  return gulp.src(files).pipe(gulp.dest('build/public/js/libs/Cesium'))


gulp.task 'static:html', false, ()->

  files = [
    'app/public/*.html'
    'app/public/**/*.html'
  ]

  return gulp.src(files).pipe(gulp.dest('build/public'))

gulp.task 'static', false, (cb)->

  runSequence(['static:cesium','static:html'],cb)