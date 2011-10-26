$ ->
  window.dragableInit = ->
    $(".draggable").draggable
      drag: (event, ui) ->
      stop: (event, ui) ->
        $.ajax
          type: "PUT"
          url: document.URL + "cards/" + $(this).attr("id")
          data:
            top: $(this).position().top
            left: $(this).position().left

  window.dragableInit()