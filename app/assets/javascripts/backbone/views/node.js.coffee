class SeaconEsbDemo.Views.NodeView extends Backbone.View
  template: JST['backbone/templates/node']
  tagName: "div"
  className:  =>
    "node " + @model.get('name')
  
  render: ->
    @$el.html @template({@model})
    jsPlumb.draggable @$el
    @
