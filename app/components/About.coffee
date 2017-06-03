React = require 'react'

{h3, div, p} = React.DOM

# About = React.createClass
#    render: () ->
#       h3 {},
#          'About Component'

About = (props) ->
   div {},
      h3 {},
         'About'
      p {},
         'Welcome to the About page!'

module.exports = About
