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
    jsPlumb.setRenderMode jsPlumb.SVG
    jsPlumb.Defaults.Anchors = ["TopCenter", "TopCenter"]
    jsPlumb.Defaults.DragOptions = { cursor: 'wait', zIndex:20 }
    jsPlumb.Defaults.Connector = [ "Bezier", { curviness: 90 } ]
  SeaconEsbDemo.app.on 'application:initialize', (app) ->
    editor = new SeaconEsbDemo.Views.Editor(el: "#editor")

  SeaconEsbDemo.app.initialize()
