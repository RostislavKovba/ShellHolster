'use strict';
const gulp = require('gulp');
const sourcemaps = require('gulp-sourcemaps');
const sass = require('gulp-dart-sass');
const autoprefixer = require('autoprefixer');
const postcss = require('gulp-postcss');
const cssnano = require('cssnano');
const rigger = require('gulp-rigger');
let terser = require('gulp-terser-js');
const browserSync = require('browser-sync');

var path = {
  build: { 
      html: 'build/',
      js: 'build/js/',
      css: 'build/css/',
      img: 'build/img/',
      fonts: 'build/fonts/',
      cache: 'build/'
  },
  src: { 
      html: 'src/**/*.html', 
      js: 'src/js/main.js',
      style: 'src/scss/main.scss',
      img: 'src/img/**/*.*', 
      fonts: 'src/fonts/**/*.*',
      cache: 'src/cache.manifest'
  },
  watch: {
      html: 'src/**/*.html',
      js: 'src/js/**/*.js',
      style: 'src/scss/**/*.scss',
      img: 'src/img/**/*.*',
      fonts: 'src/fonts/**/*.*',
      cache: 'src/cache.manifest'
  },
  clean: './build'
};

gulp.task('html:build', function () {
  return gulp
      .src(path.src.html)
      .pipe(rigger())
      .pipe(gulp.dest(path.build.html));
});

gulp.task('img:build', function () {
  return gulp
      .src(path.src.img)
      .pipe(gulp.dest(path.build.img));
});

gulp.task("style:build", function() {
    return gulp
        .src(path.src.style)
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(postcss([ autoprefixer(), cssnano() ])) 
        .pipe(sourcemaps.write('.')) 
        .pipe(gulp.dest(path.build.css))
        .pipe(browserSync.stream());
});


gulp.task('js:build', function() {
    return gulp
      .src(path.src.js)
      .pipe(rigger())
      .pipe(sourcemaps.init())
      .pipe(terser({
          mangle: {
              toplevel: true
          }
      }))
      .on('error', function (error) {
          if (error.plugin !== "gulp-terser-js") {
              console.log(error.message)
          }
        this.emit('end')
      })
      .pipe(sourcemaps.write()) 
      .pipe(gulp.dest(path.build.js))
      .pipe(browserSync.stream());
  });

gulp.task('serve', gulp.series('style:build', function() {
    browserSync.init({
        server: "build"   
    });
    gulp.watch(path.watch.html,
      gulp.series('html:build'));

    gulp.watch(path.watch.style,
      gulp.series('style:build'));

    gulp.watch(path.watch.js,
      gulp.series("js:build"));

    gulp.watch(path.watch.img,
      gulp.series('img:build'));

    gulp.watch("*.html").on('change', browserSync.reload);
  }));
  
  gulp.task('default',
    gulp.series('html:build', 'style:build', "js:build", "img:build", 'serve'));