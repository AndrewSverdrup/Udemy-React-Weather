React = require 'react'
Nav = require 'Nav'

{div, h2} = React.DOM

Main = (props) ->
      div {},
         React.createElement(Nav,{},null)
         h2 {},
            'Main Component'
         props.children

# Main = React.createClass
#    render: () ->
#       div {},
#          React.createElement(Nav,{},null)
#          h2 {},
#             'Main Component'
#          @props.children

module.exports = Main;
