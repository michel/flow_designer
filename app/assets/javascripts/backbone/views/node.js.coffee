class SeaconEsbDemo.Views.NodeView extends Backbone.View
  template: JST['backbone/templates/node']
  tagName: "div"
  className:  =>
    "node " + @model.get('name')

  events:
    'click': 'property'

  property: ->
    SeaconEsbDemo.editor.navigate("property/#{@model.cid}",{trigger: true, replace: true})
  
  render: ->
    @$el.html @template({@model})
    @

  setBindings: ->
    endpoint = 
      endpoint:[ "Dot", { radius:8 } ]
      endpointStyle : { fillStyle: "#567567"  }
      isSource:true
      maxConnections: 99
      isTarget:true
    jsPlumb.draggable @$el
    jsPlumb.addEndpoint @$el, endpoint

