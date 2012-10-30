class SeaconEsbDemo.Views.NodeView extends Backbone.View
  template: JST['backbone/templates/node']
  tagName: "div"
  className:  =>
    "node " + @model.get('name')

  events:
    'click': 'property'

  property: ->
    SeaconEsbDemo.editor.navigate("property/#{@model.cid}",{trigger: true, replace: true})
   
    $('#ui-dialog-title-properties').html "Properties: #{@model.get('name')}"
  
  render: ->
    @$el.html @template({@model})
    @

  setBindings: ->
    endpointLeft = 
      endpoint:[ "Dot", { radius:5  } ]
      anchor: ['LeftMiddle']
      isSource:true
      maxConnections:  -1
      isTarget:true
    endpointRight = 
      endpoint:[ "Dot", { radius:5  } ]
      anchor: ['RightMiddle']
      isSource:true
      maxConnections:  -1
      isTarget:true
    endpointTop = 
      endpoint:[ "Dot", { radius:5  } ]
      anchor: ['TopCenter']
      isSource:true
      maxConnections:  -1
      isTarget:true
    endpointBottom = 
      endpoint:[ "Dot", { radius:5  } ]
      anchor: [[0.5,1.2,0,0]]
      isSource:true
      maxConnections:  -1
      isTarget:true

    opts =
      paintStyle: { strokeStyle: '#000'}
    jsPlumb.draggable @$el
    jsPlumb.addEndpoint @$el, endpointLeft, opts
    jsPlumb.addEndpoint @$el, endpointRight, opts
    jsPlumb.addEndpoint @$el, endpointTop, opts
    jsPlumb.addEndpoint @$el, endpointBottom, opts

