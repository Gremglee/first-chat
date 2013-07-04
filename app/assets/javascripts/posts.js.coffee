# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
@PostPoller =
  poll: ->
    setTimeout @request, 3000
  
  request: ->
    $.get($('#posts').data('url'))




  
jQuery ->
  if $('#posts').length > 0
    PostPoller.poll()