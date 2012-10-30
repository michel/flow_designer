class SeaconEsbDemo.Models.Node extends Backbone.Model
  clone: ->
   new @constructor()


  fields: ->
    fields = []
    for k,v of @attributes 
     fields.push [@fieldType(v),[k,v]] 
    fields 

  fieldType: (v) ->
    return 'dropdown' if $.isArray(v)
    return 'filefield' if v == 'file'
    'textfield'

  human_name: ->
    @get('name').replace '_', ' '

class SeaconEsbDemo.Collections.Nodes extends Backbone.Collection
