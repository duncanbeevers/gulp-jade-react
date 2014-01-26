# Compile Jade templates to React.DOM

Uses [jade-react](https://github.com/duncanbeevers/jade-react) to compile templates to `React.DOM` directives as part of your [Gulp](https://github.com/gulpjs/gulp) build process.

The files are kind of useless on their own, so you'll want to prefix+suffix them to handle exporting the generated expressions.

## Usage

````javascript
var gulp = require('gulp');
var jadeReact = require('gulp-jade-react');

// Build React templates
gulp.task('templates', function () {
  gulp.src(['templates/*.jade'])
    .pipe(jadeReact())
    .pipe(gulp.dest('build'))
});
````
