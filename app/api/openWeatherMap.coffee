axios = require 'axios'

API_KEY = process.env.API_KEY

OPEN_WEATHER_MAP_URL = 'http://api.openweathermap.org/data/2.5/weather?&appid=' +
 API_KEY +
 '&units=imperial'

module.exports =
   getTemp: (location) ->
      encodedLocation = encodeURIComponent location
      requestUrl = "#{OPEN_WEATHER_MAP_URL}&q=#{encodedLocation}"
      axios.get(requestUrl).then(
         (res) ->
            if res.data.cod && res.data.message
               throw new Error "Unable to fetch weather for: #{location}"
            else
               res.data.main.temp
         (err) ->
            throw new Error "Unable to fetch weather for: #{location}"
      )
