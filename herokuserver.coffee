express = require 'express'

app = express()

var PORT = process.env.PORT || 3000

app.use (req, res, next) ->
   if req.headers['x-forwarded-proto'] is 'http' then next()
   else res.redirect('http//' + req.hostname + req.url)

app.use express.static 'coffee/public'

app.listen port, ->
   console.log 'Express server is up serving on port ' + PORT
