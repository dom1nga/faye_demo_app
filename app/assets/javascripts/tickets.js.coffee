$ ->
  window.dragableInit = ->
    $("#tickets-block > .draggable").draggable
      drag: (event, ui) ->
      stop: (event, ui) ->
        $.ajax
          type: "PUT"
          url: document.URL + '/' + $(this).attr("id").match(/\d+$/)
          data:
            top: $(this).position().top
            left: $(this).position().left

  window.dragableInit()