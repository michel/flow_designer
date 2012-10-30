class SeaconEsbDemo.Views.Editor extends Backbone.View
  
  initialize: (obj) ->
    @el = obj.el
    @collection =  obj.collection
    @nodes =  obj.nodes

  render: ->
   @collection.each (component) =>
    $("#library ul").append new SeaconEsbDemo.Views.LibraryComponent(model: component).render().el
   
    $("#library ul li").draggable 
      appendTo: "#grid"
      helper: "clone"

    $("#grid #route").droppable 
      activeClass: 'dragged'
      accept: 'li'
      drop: (event, ui) => 
        cid = $(ui.draggable).attr "data-cid"
        model = @collection.getByCid(cid).clone()
        @nodes.add  model
        node =  new SeaconEsbDemo.Views.NodeView(model: model).render()
        node.$el.css  ui.position
        $("#grid #route").append node.el
        node.setBindings()
    $("#grid #error").droppable 
      activeClass: 'dragged'
      accept: 'li'
      drop: (event, ui) => 
        cid = $(ui.draggable).attr "data-cid"
        model = @collection.getByCid(cid).clone()
        @nodes.add  model
        node =  new SeaconEsbDemo.Views.NodeView(model: model).render()
        node.$el.css  ui.position
        $("#grid #error").append node.el
        node.setBindings()
    @

