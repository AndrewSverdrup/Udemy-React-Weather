React = require 'react'
ReactDOM = require 'react-dom'
{Route, Router, IndexRoute, hashHistory} = require 'react-router'

Main = require 'Main'
Weather = require 'Weather'
Examples = require 'Examples'
About = require 'About'

# Load foundation
require 'style!css!foundation-sites/dist/foundation.min.css'
$(document).foundation();

# App css
require 'style!css!applicationStyles'

ReactDOM.render(
   <Router history={hashHistory}>
      <Route path="/" component={Main}>
         <IndexRoute component={Weather}/>
         <Route path="about" component={About}/>
         <Route path="examples" component={Examples}/>
      </Route>
   </Router>
   document.getElementById 'app'
)


# ReactDOM.render(React.createElement(Router, {
#   "history": hashHistory
# }, React.createElement(Route, {
#   "path": "/",
#   "component": Main
# })), document.getElementById('app'));

# ReactDOM.render(React.createElement(Router, {
#   "history": hashHistory
# }, React.createElement(Route, {
#   "path": "/",
#   "component": Main
# })), document.getElementById('app'));
