gulp        = require('gulp-help')(require('gulp'))
plug        = require('gulp-load-plugins')({ camelize: true })
runSequence = require 'run-sequence'
webpack     = require 'webpack'

config =
  entry: "./app/public/js/main.ts",
  output:
    path: "./build/public/js"
    filename: "main.js"
  resolve:
    extensions: ['', '.webpack.js', '.web.js', '.ts', '.js']
  module:
    loaders: [
      { test: /\.css$/, loader: "style-loader!css-loader!autoprefixer" }
      { test: /\.ts$/, loader: 'ts-loader' }
    ]

gulp.task 'webpack', false, (cb)->

  webpack config, (err, stats) ->
    if err
      throw new gutil.PluginError("webpack", err)

    plug.util.log("[webpack]", stats.toString({}));
    cb()