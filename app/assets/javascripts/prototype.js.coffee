$ ->
  $("#components #tabs").tabs();
  $("#properties").dialog({ "position":[$(document).width() -  350,$("header").height() + 35] });
  setDimensions = ->
    $("#components").height  $(document).height() - $("header").height()
    $("#shadow_h").height $(document).height() - $("header").height()
    $("#grid").width $(document).width() - $("#components").width() - 5
    $("#shadow_h").css "left",  $("#components").width()
    $("#grid").height  $(document).height() - $("header").height()
  setDimensions();
  $(window).resize -> 
    setDimensions();
