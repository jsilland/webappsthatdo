debug = require('debug')('webappsthatdo')
app = require('../app')

app.set('port', process.env.PORT || 5000)

server = app.listen(app.get('port'), () ->
  debug('Express server listening on port ' + server.address().port);
)
