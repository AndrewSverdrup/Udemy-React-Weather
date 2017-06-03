React = require 'react'
{Link} = require 'react-router'
{h1, div, p, ol, li} = React.DOM

Examples = (props) ->
   div {},
      h1
         className: 'text-center'
         'Examples'
      p {},
         'Here are a few example locations to try out'
         ol {},
            li {},
               React.createElement(Link,{to: '/?location=Phoenix'},'Phoenix, AX')
            li {},
               React.createElement(Link,{to: '/?location=Rio'},'Rio, Brazil')               


module.exports = Examples


# Examples = React.createClass
#    render: () ->
#       h3 {},
#          'Examples Component'
