uString = require 'underscore.string'

# map of transformations (':'-namespaced keys)
transformations = 
  'capitalize': ->
    uString.capitalize(this)

# function to apply these transformations in atom
transform = (command) ->
  
  # make sure there is an active editor
  editor = atom.workspace.activePaneItem
  return unless editor
  
  # make sure there is at least 1 selection
  selection = editor.getSelection() # gets the last selection
  return unless selection
  
  # replace all selected text(s) with a function
  # TODO: does this use an "internal API"?
  #       method is not documented, but used for Edit > Text > Uppercase etc.
  editor.replaceSelectedText 
    selectWordIfEmpty: true,
    (text) ->
      do transformations[command].bind(text) if transformations[command]
      

# export module
module.exports =

  # this is run on (lazy) activation
  activate: ->
    # - attaches functions to commands
    for own cmd of transformations
      do (cmd) ->
        atom.workspaceView.command "transform:#{cmd}", => transform(cmd)
