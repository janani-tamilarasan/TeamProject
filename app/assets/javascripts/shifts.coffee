# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


//= require jquery
//= require jquery_ujs

$(document).ready ->
  $('.team-selection').on 'change', ->
    $.ajax
      url: '/shifts/get_members'
      type: 'GET'
      dataType: 'script'
      data: id: $('.team-selection option:selected').val()
    return
  return
