{View} = require 'atom'

module.exports =
class RelativeNumberView extends View
  @content: ->
    @div class: 'relative-number overlay from-top', =>
      @div "The RelativeNumber package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "relative-number:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "RelativeNumberView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
