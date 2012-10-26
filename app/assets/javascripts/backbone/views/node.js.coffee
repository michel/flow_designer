class SeaconEsbDemo.Views.NodeView extends Backbone.View
  template: JST['backbone/templates/node']
  tagName: "div"
  className: "node"

  events: 
    'click': 'selected'

  render: ->
    $("#grid").append this.el
    jsPlumb.draggable @.el

  selected: ->
    console.log "selected",@.el
  
    
