class SeaconEsbDemo.Views.Editor extends Backbone.View

  render: ->
   @collection.each (component) =>
    $("#library ul").append new SeaconEsbDemo.Views.LibraryComponent(model: component).render().el
   
    $("#library ul li").draggable 
      appendTo: "#grid"
      helper: "clone"

    $("#grid").droppable 
      activeClass: 'dragged'
      accept: 'li'
      drop: (event, ui) => 
        cid = $(ui.draggable).attr "data-cid"
        node =  new SeaconEsbDemo.Views.NodeView(model: @collection.getByCid(cid)).render()
        node.$el.css  ui.position
        $("#grid").append node.el
    @

