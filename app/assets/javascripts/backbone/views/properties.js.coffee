class SeaconEsbDemo.Views.PropertiesView extends Backbone.View
  tagName: "div"

  render: ->
    for field in @model.fields()
       @$el.append  JST["backbone/templates/fields/#{field[0]}"](name: field[1][0], value: field[1][1])
    @
