gulp = require('gulp')
bump = require('gulp-bump')
git = require('gulp-git')
mocha = require('gulp-mocha')

gulp.task 'release', ->
  version = require('package')('.').version
  gulp.src('.')
    .pipe(git.tag(version, 'Release'))

gulp.task 'bump', ->
  gulp.src('package.json')
    .pipe(bump())
    .pipe(gulp.dest('.'))

gulp.task 'test', ->
  gulp.src(['test.coffee'])
    .pipe(mocha())

gulp.task 'default', ['test']
