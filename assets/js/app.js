// Generated by CoffeeScript 1.6.3
(function() {
  $(".pseudoNav").hover((function() {
    $(this).siblings().addClass("not--hovered");
    return $(this).removeClass("not--hovered");
  }), function() {
    return $(this).siblings().removeClass("not--hovered");
  });

}).call(this);
