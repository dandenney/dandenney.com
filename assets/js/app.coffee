# Toggle Class for expanding
$(".pseudoNav").hover (->
  $(this).siblings().addClass "not--hovered"
  $(this).removeClass "not--hovered"
  ), ->
    $(this).siblings().removeClass "not--hovered"
