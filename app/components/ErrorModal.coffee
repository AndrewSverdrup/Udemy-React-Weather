React = require 'react'
ReactDOM = require 'react-dom'
ReactDOMServer = require 'react-dom/server'

{div, h4, p, button} = React.DOM

ErrorModal = React.createClass
   getDefaultProps: () ->
      title: 'Error'
   propTypes:
      title: React.PropTypes.string
      message: React.PropTypes.string.isRequired
   componentDidMount: () ->
      modalMarkup = (
         div
            id: 'error-modal'
            className: 'reveal tiny text-center'
            "data-reveal": ''
            h4 {},
               @props.title
            p {},
               @props.message
            p {},
               button
                  className: 'button hollow'
                  "data-close": ''
                  'Okay'
      )
      $modal = $(ReactDOMServer.renderToString modalMarkup)
      $(ReactDOM.findDOMNode(@)).html $modal

      modal = new Foundation.Reveal $('#error-modal')
      modal.open()
   render: () ->
      return
         div {},
            null


module.exports = ErrorModal
