express = require 'express'

app = express()

PORT = process.env.PORT || 3000

#app.use (req, res, next) ->
   #if req.headers['x-forwarded-proto'] is 'https' then res.redirect('http//' + req.hostname + req.url)
   #else next()

app.use express.static 'public'

app.listen PORT, ->
   console.log 'Express server is up serving on port ' + PORT
