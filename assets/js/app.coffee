#!
#* FitVids 1.0
#*
#* Copyright 2011, Chris Coyier - http://css-tricks.com + Dave Rupert - http://daverupert.com
#* Credit to Thierry Koblentz - http://www.alistapart.com/articles/creating-intrinsic-ratios-for-video/
#* Released under the WTFPL license - http://sam.zoy.org/wtfpl/
#*
#* Date: Thu Sept 01 18:00:00 2011 -0500
#
(($) ->
  "use strict"
  $.fn.fitVids = (options) ->
    settings = customSelector: null
    div = document.createElement("div")
    ref = document.getElementsByTagName("base")[0] or document.getElementsByTagName("script")[0]
    div.className = "fit-vids-style"
    div.innerHTML = "&shy;<style>               .fluid-width-video-wrapper {                 width: 100%;                              position: relative;                       padding: 0;                            }                                                                                   .fluid-width-video-wrapper iframe,        .fluid-width-video-wrapper object,        .fluid-width-video-wrapper embed {           position: absolute;                       top: 0;                                   left: 0;                                  width: 100%;                              height: 100%;                          }                                       </style>"
    ref.parentNode.insertBefore div, ref
    $.extend settings, options  if options
    @each ->
      selectors = ["iframe[src*='player.vimeo.com']", "iframe[src*='www.youtube.com']", "iframe[src*='www.youtube-nocookie.com']", "iframe[src*='www.kickstarter.com']", "object", "embed"]
      selectors.push settings.customSelector  if settings.customSelector
      $allVideos = $(this).find(selectors.join(","))
      $allVideos.each ->
        $this = $(this)
        return  if @tagName.toLowerCase() is "embed" and $this.parent("object").length or $this.parent(".fluid-width-video-wrapper").length
        height = (if (@tagName.toLowerCase() is "object" or ($this.attr("height") and not isNaN(parseInt($this.attr("height"), 10)))) then parseInt($this.attr("height"), 10) else $this.height())
        width = (if not isNaN(parseInt($this.attr("width"), 10)) then parseInt($this.attr("width"), 10) else $this.width())
        aspectRatio = height / width
        unless $this.attr("id")
          videoID = "fitvid" + Math.floor(Math.random() * 999999)
          $this.attr "id", videoID
        $this.wrap("<div class=\"fluid-width-video-wrapper\"></div>").parent(".fluid-width-video-wrapper").css "padding-top", (aspectRatio * 100) + "%"
        $this.removeAttr("height").removeAttr "width"


) jQuery

# Toggle Class for expanding
$(".pseudoNav").hover (->
  $(this).siblings().addClass "not--hovered"
  $(this).removeClass "not--hovered"
  ), ->
    $(this).siblings().removeClass "not--hovered"


#-----------------------------------------------------------------------
#  Dom Ready
#-----------------------------------------------------------------------

jQuery ($) ->
  $(".video-wrapper").fitVids()