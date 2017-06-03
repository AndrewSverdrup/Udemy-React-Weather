React = require 'react'

{div, h4, p, button} = React.DOM

ErrorModal = React.createClass
   getDefaultProps: () ->
      title: 'Error'
   propTypes:
      title: React.PropTypes.string
      message: React.PropTypes.string.isRequired
   componentDidMount: () ->
      modal = new Foundation.Reveal $('#error-modal')
      modal.open()
   render: () ->
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

module.exports = ErrorModal
