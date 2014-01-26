gulp = require('gulp')
mocha = require('gulp-mocha')

gulp.task 'test', ->
  gulp.src(['test.coffee'])
    .pipe(mocha())

gulp.task 'default', ['test']
