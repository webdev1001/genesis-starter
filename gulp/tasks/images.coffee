changed  = require 'gulp-changed'
gulp     = require 'gulp'
imagemin = require 'gulp-imagemin'
config   = require '../config'

gulp.task 'images', ['unretina'], ->
  gulp.src config.images.src
    .pipe changed config.images.dest
    .pipe imagemin()
    .pipe gulp.dest config.images.dest
