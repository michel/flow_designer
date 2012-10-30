class SeaconEsbDemo.Routers.EditorRouter extends Backbone.Router
 
  routes: 
    'property/:cid': 'nodeProperty'

  initialize: (collection) ->
    @collection = collection

  nodeProperty: (cid) ->
    properties =  new SeaconEsbDemo.Views.PropertiesView(model: @collection.getByCid(cid)).render()
    $('#properties').html properties.el
  
