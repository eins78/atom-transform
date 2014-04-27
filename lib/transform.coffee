# get map of transformations
transformations = require './transformations-map'

# a function to apply a string transformation function
# to all current selections in atom
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

    console.log transformations
    
    # - attaches functions to commands
    for own cmd of transformations
      do (cmd) ->
        atom.workspaceView.command "transform:#{cmd}", => transform(cmd)
    
    # - adds menu entries - TODO: make it work
    # atom.menu.add(
    #   label: 'Packages'
    #   submenu: [  
    #     label: 'Transform'
    #     submenu: for own transformation of transformations
    #       do (transformation) ->
    #         entry = 
    #           label: transformation
    #           command: transformation
    #         console.log entry
    #         return entry
    #   ]
    # )
    # atom.menu.update()
