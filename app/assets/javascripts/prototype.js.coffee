$ ->
  $("#components #tabs").tabs()
  el  = $('#error .error_default')
  endpointLeft = 
    endpoint:[ "Dot", { radius:5  } ]
    anchor: ['LeftMiddle']
    isSource:true
    maxConnections:  -1
    isTarget:true
  endpointRight = 
    endpoint:[ "Dot", { radius:5  } ]
    anchor: ['RightMiddle']
    isSource:true
    maxConnections:  -1
    isTarget:true
  endpointTop = 
    endpoint:[ "Dot", { radius:5  } ]
    anchor: ['TopCenter']
    isSource:true
    maxConnections:  -1
    isTarget:true
  endpointBottom = 
    endpoint:[ "Dot", { radius:5  } ]
    anchor: [[0.5,1.2,0,0]]
    isSource:true
    maxConnections:  -1
    isTarget:true

  opts =
    paintStyle: { strokeStyle: '#000'}
  el = $('#error .error_default')
  jsPlumb.addEndpoint el, endpointLeft, opts
  jsPlumb.addEndpoint el, endpointRight, opts
  jsPlumb.addEndpoint el, endpointTop, opts
  jsPlumb.addEndpoint el, endpointBottom, opts
  $("#error").hide();
  $(".route a").bind "click",(e) ->
    e.preventDefault() 
    $(".error a").removeClass "current"
    $("#error").hide()
    $("#route").show()
    $(@).addClass "current"
  $(".error a").bind "click",(e)->
    e.preventDefault() 
    $(".route a").removeClass "current"
    $("#route").hide()
    $("#error").show()
    $(@).addClass "current"
    

  $("#properties").dialog({ "position":[$(document).width() -  350,$("header").height() + 35] });
  setDimensions = ->
    $("#components").height  $(document).height() - $("header").height()
    $("#shadow_h").height $(document).height() - $("header").height()
    $("#grid #route").width $(document).width() - $("#components").width() - 5
    $("#grid #error").width $(document).width() - $("#components").width() - 5
    $("#grid #error").height  $(document).height() - $("header").height()
    $("#grid #route").height  $(document).height() - $("header").height()
    $("#shadow_h").css "left",  $("#components").width()
  setDimensions();
  $(window).resize -> 
    setDimensions();
