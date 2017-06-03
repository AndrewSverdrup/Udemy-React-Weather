React = require 'react'

{h1, div, p, ul, li, a} = React.DOM

About = (props) ->
   div {},
      h1
         className: 'text-center page-title'
         'About'

      p {},
         'This is a weather application built on React. I have built This
         for The Complete React Web App Dev Course.'
         p {},
            'Here are some of the tools I used:'
         ul {},
            li {},
               a
                  href: 'https://facebook.github.io/react'
                  target: '_blank'
                  'React'
               '- This was the JavaScript framework used.'
            li {},
               a
                  href: 'http://openweathermap.org'
                  target: '_blank'
                  'Open Weather Map'
               '- I used Open Weather Map to search for weather data by city name.'

module.exports = About


# About = React.createClass
#    render: () ->
#       h3 {},
#          'About Component'
