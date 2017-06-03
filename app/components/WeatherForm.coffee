React = require 'react'

{form, input, button} = React.DOM

WeatherForm = React.createClass
   onFormSubmit: (e) ->
      e.preventDefault()
      location = @refs.location.value
      if location.length > 0
         @refs.location.value = ''
         @props.onSearch location

   render: () ->
      form
         onSubmit: @onFormSubmit
         input
            type: 'text'
            placeholder:  'Enter city name'
            ref: 'location'
         button {},
            'Get Weather'

module.exports = WeatherForm
