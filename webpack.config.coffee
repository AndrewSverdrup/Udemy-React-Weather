component_path = 'app/components/'

module.exports =
   entry: './app/app.cjsx'
   output:
      path: __dirname
      filename: './public/bundle.js'
   resolve:
      root: __dirname
      alias: {
         #Format is ComponentName: 'path/to/ComponentName.coffee'
         # This allows use to just requie('ComponentName') instead of providing paths
         Main: component_path + 'Main.coffee'
         Nav: component_path + 'Nav.coffee'
         Weather: component_path + 'Weather.coffee'
         WeatherForm: component_path + 'WeatherForm.coffee'
         WeatherMessage: component_path + 'WeatherMessage.coffee'
         About: component_path + 'About.coffee'
         Examples: component_path + 'Examples.coffee'
         openWeatherMap: 'app/api/openWeatherMap.coffee'
      }
      extensions: [
         ''
         '.js'
         '.coffee'
         '.cjsx'
      ]
   module:
      loaders: [
         loader: 'coffee-jsx-loader'
         test: /(\.coffee|\.cjsx)$/,
         exclude: /(node_modules|bower_components)/
      ]
   devtool: 'cheap-module-eval-source-map'
