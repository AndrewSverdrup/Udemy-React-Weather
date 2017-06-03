React = require 'react'

WeatherForm = require 'WeatherForm'
WeatherMessage = require 'WeatherMessage'
openWeatherMap = require 'openWeatherMap'

{h1, h3, div} = React.DOM

Weather = React.createClass
   getInitialState: () ->
      isLoading: false
   handleSearch: (location) ->
      @setState isLoading: true
      openWeatherMap.getTemp(location).then(
         (temp) => # use '=>' instead of '->' so that the javascript 'this' refers to this component
            @setState
               location: location
               temp: temp
               isLoading: false
         (errorMessage) =>
            @setState
               isLoading: false
            alert errorMessage
      )
   render: () ->
      {isLoading, temp, location} = @state

      renderMessage = () ->
         if isLoading
            h3
               className: 'text-center'
               'Fetching weather...'
         else if temp && location
            React.createElement(WeatherMessage, {location: location, temp: temp}, null)
      div {},
         h1
            className: 'text-center'
            'Get Weather'
         React.createElement(WeatherForm, {onSearch: @handleSearch}, null)
         renderMessage()

module.exports = Weather
