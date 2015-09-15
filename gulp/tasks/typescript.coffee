gulp   = require('gulp-help')(require('gulp'))
plug   = require('gulp-load-plugins')({ camelize: true })
tsc    = plug.typescript

gulp.task 'typescript:backend', false, (cb)->

  files = [
    'app/**/*.ts'
    'app/*.ts'
    '!app/public/**/*.ts'
    '!app/public/*.ts'
  ]

  tsProject = tsc.createProject('./tsconfig.json')
  tsResult = gulp.src(files).pipe(tsc(tsProject))

  return tsResult.js.pipe(gulp.dest('build'));