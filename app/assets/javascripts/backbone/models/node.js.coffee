class SeaconEsbDemo.Models.Node extends Backbone.Model

  human_name: ->
    @get('name').replace '_', ' '

