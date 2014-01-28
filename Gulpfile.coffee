gulp = require('gulp')
bump = require('gulp-bump')
mocha = require('gulp-mocha')

gulp.task 'bump', ->
  gulp.src('package.json')
    .pipe(bump())
    .pipe(gulp.dest('.'))

gulp.task 'test', ->
  gulp.src(['test.coffee'])
    .pipe(mocha())

gulp.task 'default', ['test']
