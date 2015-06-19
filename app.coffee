express = require('express')
path = require('path')
logger = require('morgan')
cookieParser = require('cookie-parser')
bodyParser = require('body-parser')
multer = require('multer')

record = require('./routes/record')

app = express()

# view engine setup
app.set('views', path.join(process.cwd(), 'views'))
app.set('view engine', 'jade')

# routes
app.use(logger('dev'))
app.use(bodyParser.json())
app.use(multer())
app.use(cookieParser())
app.use('/ServiceWorker.js', express.static(path.join(process.cwd(), 'build/assets/js/sw/ServiceWorker.js')))
app.use('/assets', express.static(path.join(process.cwd(), 'bower_components')))
app.use('/assets', express.static(path.join(process.cwd(), 'build/assets')))
app.use('/record', record)

# catch 404 and forward to error handler
app.use((req, res, next) ->
    err = new Error('Not Found')
    err.status = 404
    next(err)
)

# error handlers

# development error handler will print stacktrace
if (app.get('env') == 'development')
    app.use((err, req, res, next) ->
        res.status(err.status || 500)
        res.render('error', {
            message: err.message,
            error: err
        })
    )
    app.locals.pretty = true

# production error handler no stacktraces leaked to user
app.use((err, req, res, next) ->
    res.status(err.status || 500)
    res.render('error', {
        message: err.message,
        error: {}
    })
)

module.exports = app
