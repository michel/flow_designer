#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.SeaconEsbDemo =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
$ ->
  SeaconEsbDemo.app.on 'application:setup', (app) ->
    jsPlumb.Defaults.Anchors = ["TopCenter", "TopCenter"]
    jsPlumb.setRenderMode jsPlumb.SVG
    jsPlumb.Defaults.DragOptions = { cursor: 'wait', zIndex:20 }
    jsPlumb.Defaults.Connector = [ "Bezier", { curviness: 90 } ]
    app.library = new SeaconEsbDemo.Collections.Nodes
  SeaconEsbDemo.app.on 'application:initialize', (app) ->
    app.library.reset [ new SeaconEsbDemo.Models.NodeSoapEndpoint, new SeaconEsbDemo.Models.NodeSoapEndpoint ]
    editor = new SeaconEsbDemo.Views.Editor(el: "#editor",collection: app.library)
    editor.render()

  SeaconEsbDemo.app.initialize()
