React = require 'react'
{h1, div, ul, li, form, input} = React.DOM
{Link, IndexLink} = require 'react-router'

Nav = React.createClass
   onSearch: (e) ->
      e.preventDefault()
      location = @refs.search.value
      encodedLocation = encodeURIComponent location
      if location.length > 0
         this.refs.search.value = ''
         window.location.hash = '#/?location=' + encodedLocation
   render: () ->
      div
         className: 'top-bar'
         div
            className: 'top-bar-left'
            ul
               className: 'menu'
               li
                  className: 'menu-text'
                  'React Weather App'
               li {},
                  React.createElement(IndexLink,{to: '/',activeClassName:"active", activeStyle:{fontWeight:'bold'}},'Get Weather')
               li {},
                  React.createElement(Link, {to: '/about',activeClassName:"active",activeStyle:{fontWeight:'bold'}}, 'About')
               li {},
                  React.createElement(Link, {to: '/examples',activeClassName:"active",activeStyle:{fontWeight:'bold'}}, 'Examples')

         div
            className: 'top-bar-right'
            form
               onSubmit: @onSearch
               ul
                className: 'menu'
                li {},
                   input
                      type: 'search'
                      placeholder: 'Search weather by city'
                      ref: 'search'
                li {},
                   input
                      type: 'submit'
                      className: 'button'
                      value: 'Get Weather'




module.exports = Nav
