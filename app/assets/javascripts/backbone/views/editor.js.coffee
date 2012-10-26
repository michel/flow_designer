class SeaconEsbDemo.Views.Editor extends Backbone.View
  events:
    "click #grid": "add_node"
  library: [ new SeaconEsbDemo.Models.NodeSoapEndpoint, new SeaconEsbDemo.Models.NodeSoapEndpoint ]

  initialize: ->
    @populate_libary()

  populate_libary: ->
    #for component in @library
      #   $("#library ul").append new SeaconEsbDemo.Views.LibraryComponent(model: component).render().el
    $('#library ul li').draggable ->
      revert: true
      snap: true
      helper: 'clone'
    $('#derp').droppable ->
      drop: ->
       console.log "derp"

  add_node: ->
   node =  new SeaconEsbDemo.Views.NodeView.render()
