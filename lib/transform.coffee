module.exports =

  activate: ->
    # add command
    atom.workspaceView.command "transform:capitalize", => @transform()
    
  transform: ->
    # make sure the is an active editor
    editor = atom.workspace.activePaneItem
    console.log editor
    return unless editor
    
    # make sure there is at least 1 selection
    selection = editor.getSelection() # gets the last selection
    console.log selection
    return unless selection
    
    # replace all selected text(s) with a function
    # TODO: does this use an "internal API"?
    #       method is not documented, but used for Edit > Text > Uppercase etc.
    editor.replaceSelectedText 
      selectWordIfEmpty: true,
      (text) ->
        console.log text
        return text[0].toUpperCase() + text.slice(1)
