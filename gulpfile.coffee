gulp = require 'gulp'
http = require 'http'
path = require 'path'
lr = require 'tiny-lr'
childProcess = (require 'child_process')
connect = require 'connect'
es = require 'event-stream'
gutil = require 'gulp-util'
clean = require 'gulp-clean'
mocha = require 'gulp-mocha'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
uglify = require 'gulp-uglify'
embedlr = require 'gulp-embedlr'
refresh = require 'gulp-livereload'
browserify = require 'gulp-browserify'
server = do lr

projectPath   = "#{path.resolve __dirname}"
appPath       = "#{projectPath}/app"
buildPath     = "#{projectPath}/build"
distPath     = "#{projectPath}/dist"

jsBuildPath      = "#{buildPath}/js"
testBuildPath    = "#{buildPath}/test"

nodeModulesPath     = "#{projectPath}/node_modules"

port = 3000
hostname = null
lrPort = gutil.env.lrport or 35729

browserifyOptions =
  debug: not gutil.env.production

# Starts the webserver
gulp.task 'webserver', ->
  application = connect()
    # allows import of npm resources
    .use connect.static nodeModulesPath
    # Mount the mocha tests
    .use connect.static testBuildPath
  (http.createServer application).listen port, hostname

gulp.task 'build:src', ->
  gulp.src "#{appPath}/src/**/*.coffee"
    .pipe coffee bare: true
    .pipe gulp.dest "#{jsBuildPath}"

gulp.task 'build:tests', ['build:src'], ->
  gulp.src "#{jsBuildPath}/test.js", read: false
    .pipe browserify browserifyOptions
    .on 'error', gutil.log
    .pipe gulp.dest "#{testBuildPath}/src"
    .pipe refresh server

gulp.task 'styles', ->
  gulp.src "node_modules/mocha/mocha.css"
    .pipe gulp.dest "#{testBuildPath}/styles"
    .pipe refresh server

gulp.task 'html', ->
  gulp.src "#{appPath}/index.html"
    .pipe embedlr() # embeds the live reload script
    .pipe gulp.dest "#{testBuildPath}"
    .pipe refresh server

gulp.task 'livereload', ->
  server.listen lrPort, (err) ->
    gutil.log err if err

gulp.task 'watch', ->
  gulp.watch "#{appPath}/src/**", ['build:tests']
  gulp.watch "#{appPath}/test.html", ['html']

gulp.task 'clean', ->
  gulp.src ["#{buildPath}"], read: false
    .pipe clean force: true

gulp.task 'build', [
  'build:src'
  'build:tests'
  'html'
  'styles'
  'build:tests'
]

gulp.task 'test', ['test:console']

gulp.task 'test:web', [
  'styles'
  'html'
  'build:tests'
  'webserver'
  'livereload'
  'watch'
]

gulp.task 'test:console', ['build:src'], ->
  gulp.src "#{jsBuildPath}/test.js", read: false
    .pipe browserify browserifyOptions
    .on 'error', gutil.log
    .pipe mocha reporter: 'nyan'
    .on 'error', gutil.log

gulp.task 'dist', ['build'], ->
  gulp.src ["#{jsBuildPath}/**/*", "!#{jsBuildPath}/test.js"]
    .pipe uglify()
    .pipe gulp.dest distPath

gulp.task 'default', ['dist']
