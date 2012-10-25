# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#components #tabs").tabs();
  $("#properties").dialog();
  setDimensions = ->
    $("#components").height  $(document).height() - $("header").height();
    $("#grid").width $(document).width() - $("#components").width() - 1
    $("#grid").height  $(document).height() - $("header").height()
  setDimensions();
  $(window).resize -> 
    setDimensions();
