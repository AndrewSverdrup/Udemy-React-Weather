React = require 'react'

{h3, div, p} = React.DOM

About = (props) ->
   div {},
      h3 {},
         'About'
      p {},
         'Welcome to the About page!'

module.exports = About


# About = React.createClass
#    render: () ->
#       h3 {},
#          'About Component'
