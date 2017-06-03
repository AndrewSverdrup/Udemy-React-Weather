React = require 'react'

{h3, div, p} = React.DOM

# Examples = React.createClass
#    render: () ->
#       h3 {},
#          'Examples Component'

Examples = (props) ->
   div {},
      h3 {},
         'Examples'
      p {},
         'Welcome to the Examples page!'


module.exports = Examples
