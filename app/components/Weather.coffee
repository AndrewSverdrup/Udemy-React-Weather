React = require 'react'

WeatherForm = require 'WeatherForm'
WeatherMessage = require 'WeatherMessage'
openWeatherMap = require 'openWeatherMap'
ErrorModal = require 'ErrorModal'

{h1, h3, div} = React.DOM

Weather = React.createClass
   getInitialState: () ->
      isLoading: false
   handleSearch: (location) ->
      @setState
         isLoading: true
         errorMessage: undefined
      openWeatherMap.getTemp(location).then(
         (temp) => # use '=>' instead of '->' so that the javascript 'this' refers to this component
            @setState
               location: location
               temp: temp
               isLoading: false
         (e) =>
            @setState
               isLoading: false
               errorMessage: e.message
      )
   render: () ->
      {isLoading, temp, location, errorMessage} = @state

      renderMessage = () ->
         if isLoading
            h3
               className: 'text-center'
               'Fetching weather...'
         else if temp && location
            React.createElement(WeatherMessage, {location: location, temp: temp}, null)
      renderError = () =>
         React.createElement(ErrorModal,{message: errorMessage},null) if typeof errorMessage is 'string'
      div {},
         h1
            className: 'text-center'
            'Get Weather'
         React.createElement(WeatherForm, {onSearch: @handleSearch}, null)
         renderMessage()
         renderError()

module.exports = Weather
