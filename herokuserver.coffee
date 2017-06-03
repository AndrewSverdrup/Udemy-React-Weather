express = require 'express'

app = express()

PORT = process.env.PORT || 3000

app.use (req, res, next) ->
   localhost = req.headers['host'].slice 0,9
   if req.headers['x-forwarded-proto'] is 'http' or req.headers['host'].slice(0,9) is localhost then next()
   else res.redirect('http//' + req.hostname + req.url)

app.use express.static 'public'

app.listen PORT, ->
   console.log 'Express server is up serving on port ' + PORT
