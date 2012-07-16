# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $ ->
    $(".datum").datepicker dateFormat: "dd-mm-yy"

    $(document).ready ->
      $("input.timepicker").timepicker
        timeFormat: "HH:mm:ss"
        minTime: new Date(0, 0, 0, 0, 0, 0)
        maxTime: new Date(0, 0, 0, 23, 59, 0)
        startHour: 6
        startTime: new Date(0, 0, 0, 6, 30, 0)
        interval: 10

  

  

