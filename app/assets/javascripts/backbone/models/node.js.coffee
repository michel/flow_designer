class SeaconEsbDemo.Models.Node extends Backbone.Model

  human_name: ->
    @get('name').replace '_', ' '

class SeaconEsbDemo.Collections.Nodes extends Backbone.Collection
