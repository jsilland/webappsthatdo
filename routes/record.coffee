express = require('express')

router = express.Router()

router.get('/', (req, res) ->
  res.render('record')
)

module.exports = router
