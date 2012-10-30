
class SeaconEsbDemo.Models.Application
  initialize: ->
    @trigger('application:setup',SeaconEsbDemo)
    @trigger('application:initialize',SeaconEsbDemo)
    Backbone.history?.start(pushState: yes) unless Backbone.History.started
   
_.extend SeaconEsbDemo.Models.Application.prototype, Backbone.Events
SeaconEsbDemo.app = new SeaconEsbDemo.Models.Application
