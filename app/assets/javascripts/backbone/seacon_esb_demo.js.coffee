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
    jsPlumb.Defaults.DragOptions = { cursor: 'crosshair', zIndex:20 }
    jsPlumb.Defaults.Connector = [ "Flowchart"]
    app.library = new SeaconEsbDemo.Collections.Nodes
  SeaconEsbDemo.app.on 'application:initialize', (app) ->
    app.nodes  = new SeaconEsbDemo.Collections.Nodes
    app.library.reset [new SeaconEsbDemo.Models.NodeSoapEndpoint,
                       new SeaconEsbDemo.Models.NodeContentFilter,
                       new SeaconEsbDemo.Models.NodeHTTPEndpoint,
                       new SeaconEsbDemo.Models.NodeXSLTTranslator,
                       new SeaconEsbDemo.Models.NodeFileEndpoint,
                       new SeaconEsbDemo.Models.NodeExpressionTranslation,
                       new SeaconEsbDemo.Models.NodeSendEmail
                       ]
    app.editor = new SeaconEsbDemo.Routers.EditorRouter(app.nodes)
    editorView = new SeaconEsbDemo.Views.Editor(el: "#editor",collection: app.library,nodes: app.nodes)
    editorView.render()

  SeaconEsbDemo.app.initialize()
