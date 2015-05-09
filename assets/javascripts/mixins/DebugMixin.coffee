module.exports =
  componentWillMount: ->
    console.log @constructor.displayName

  componentDidUpdate: ->
    console.log @constructor.displayName