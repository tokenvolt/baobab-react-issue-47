React           = require("react");
StateTree       = require('StateTree');
BaobabRootMixin = require('baobab-react/mixins').root;
DebugMixin      = require('mixins/DebugMixin')
R               = React.DOM
r               = React.createElement
Main            = require('components/Main')

module.exports = React.createClass
  displayName: 'App'
  mixins: [
            DebugMixin
            BaobabRootMixin
          ]

  render: ->
    R.div null,
      r Main
