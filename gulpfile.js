var gulp = require('gulp');
var serve = require('gulp-serve');
 
gulp.task('serve', serve({
  port: 3030
}));
gulp.task('serve-build', serve(['public', 'build']));
gulp.task('serve-prod', serve({
  root: ['public', 'build'],
  port: 3000,
  middleware: function(req, res) {
    // custom optional middleware 
  }
}));