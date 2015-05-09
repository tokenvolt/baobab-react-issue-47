React     = require("react");

BaobabBranchMixin = require('baobab-react/mixins').branch;

StateTree = require('StateTree')
R               = React.DOM
r = React.createElement
DebugMixin        = require('mixins/DebugMixin')

module.exports = React.createClass
  displayName: 'Main'
  mixins: [
    BaobabBranchMixin
    DebugMixin
  ]
  cursors:
    loaded: ['loaded']

  render: ->
    R.div {},
      R.p {}, 'test'

