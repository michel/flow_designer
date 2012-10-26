
class SeaconEsbDemo.Models.Application
  initialize: ->
    @trigger('application:setup',SeaconEsbDemo)
    @trigger('application:initialize',SeaconEsbDemo)
_.extend SeaconEsbDemo.Models.Application.prototype, Backbone.Events
SeaconEsbDemo.app = new SeaconEsbDemo.Models.Application
