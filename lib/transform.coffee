TransformView = require './transform-view'

module.exports =
  transformView: null

  activate: (state) ->
    @transformView = new TransformView(state.transformViewState)

  deactivate: ->
    @transformView.destroy()

  serialize: ->
    transformViewState: @transformView.serialize()
