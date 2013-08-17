# Toggle Class for expanding
$(".toggle-is--expanded").on "click", ->
  $(".js-expand").toggleClass "is--expanded"

$(".js-drawer--toggle").on "click", ->
  $(this).siblings().removeClass "is--expanded"
  $(this).toggleClass "is--expanded"