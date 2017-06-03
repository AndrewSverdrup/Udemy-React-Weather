React = require 'react'
{h1, div} = React.DOM
{Link, IndexLink} = require 'react-router'

Nav = (props) ->
      div {},
         h1 {},
            'Nav Component'
         React.createElement(IndexLink,{to: '/',activeClassName:"active", activeStyle:{fontWeight:'bold'}},'Get Weather')
         React.createElement(Link, {to: '/about',activeClassName:"active",activeStyle:{fontWeight:'bold'}}, 'About')
         React.createElement(Link, {to: '/examples',activeClassName:"active",activeStyle:{fontWeight:'bold'}}, 'Examples')

# Nav = React.createClass
#    render: () ->
#       div {},
#          h1 {},
#             'Nav Component'
#          React.createElement(IndexLink,{to: '/',activeClassName:"active", activeStyle:{fontWeight:'bold'}},'Get Weather')
#          React.createElement(Link, {to: '/about',activeClassName:"active",activeStyle:{fontWeight:'bold'}}, 'About')
#          React.createElement(Link, {to: '/examples',activeClassName:"active",activeStyle:{fontWeight:'bold'}}, 'Examples')

module.exports = Nav
