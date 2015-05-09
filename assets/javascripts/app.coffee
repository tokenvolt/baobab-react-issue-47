React = require('react');
tree  = require('StateTree');
App   = require('components/App')
r     = React.createElement

React.render(
  (r App, tree: tree),
  document.getElementById('app')
)
