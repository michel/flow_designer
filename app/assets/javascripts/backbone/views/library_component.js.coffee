class SeaconEsbDemo.Views.LibraryComponent extends Backbone.View
  tagName: "li"
  template: JST['backbone/templates/library_component']
  className: =>
    @model.get 'name'
  render: -> 
    @$el.html @template({@model})
    @
