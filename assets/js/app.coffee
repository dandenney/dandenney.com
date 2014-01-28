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
$(".pseudoNav, .header--site-nav a").hover (->
  $(this).siblings().addClass "not--hovered"
  $(this).removeClass "not--hovered"
  ), ->
    $(this).siblings().removeClass "not--hovered"

# Toggle header
$(".header--site-trigger").on "click", ->
  $(".header--site, .footer--site").toggleClass("is--expanded")

$(".slide--trigger").on "click", ->
  $(this).next(".slide--base").toggleClass("is-visible")

$(".add--dynamic").one "click", ->
  $(this).next(".slide--base").html("<p>Wrap all of the existing HTML in the <code>body</code> with a <code>script</code> tag of type <code>text/x-handlebars</code>.</p>

<pre data-syntax='text/html' class='CodeMirror cm-s-vibrant-ink'><span class='cm-tag'>&lt;script</span> <span class='cm-attribute'>type</span>=<span class='cm-string'>'text/x-handlebars'</span><span class='cm-tag'>&gt;</span>
  <span class='cm-tag'>&lt;div</span> <span class='cm-attribute'>class</span>=<span class='cm-string'>'navbar navbar-default'</span><span class='cm-tag'>&gt;</span>
    <span class='cm-tag'>&lt;div</span> <span class='cm-attribute'>class</span>=<span class='cm-string'>'container'</span><span class='cm-tag'>&gt;</span>
      <span class='cm-tag'>&lt;a</span> <span class='cm-attribute'>href</span>=<span class='cm-string'>'#'</span> <span class='cm-attribute'>class</span>=<span class='cm-string'>'navbar-brand'</span><span class='cm-tag'>&gt;</span><span class='cm-tag'>&lt;img</span> <span class='cm-attribute'>src</span>=<span class='cm-string'>'images/logo.png'</span> <span class='cm-attribute'>alt</span>=<span class='cm-string'>'logo'</span> <span class='cm-attribute'>height</span>=<span class='cm-string'>'34'</span> <span class='cm-attribute'>width</span>=<span class='cm-string'>'224'</span> <span class='cm-tag'>/&gt;</span><span class='cm-tag'>&lt;/a</span><span class='cm-tag'>&gt;</span>
      <span class='cm-tag'>&lt;ul</span> <span class='cm-attribute'>class</span>=<span class='cm-string'>'nav navbar-nav navbar-right'</span><span class='cm-tag'>&gt;</span>
        <span class='cm-tag'>&lt;li</span> <span class='cm-attribute'>href</span>=<span class='cm-string'>'#'</span> <span class='cm-attribute'>class</span>=<span class='cm-string'>'active'</span><span class='cm-tag'>&gt;</span>Home<span class='cm-tag'>&lt;/li</span><span class='cm-tag'>&gt;</span>
        <span class='cm-tag'>&lt;li</span> <span class='cm-attribute'>href</span>=<span class='cm-string'>'#/about'</span><span class='cm-tag'>&gt;</span>About<span class='cm-tag'>&lt;/li</span><span class='cm-tag'>&gt;</span>
      <span class='cm-tag'>&lt;/ul</span><span class='cm-tag'>&gt;</span>
    <span class='cm-tag'>&lt;/div</span><span class='cm-tag'>&gt;</span>
  <span class='cm-tag'>&lt;/div</span><span class='cm-tag'>&gt;</span>
  <span class='cm-tag'>&lt;div</span> <span class='cm-attribute'>class</span>=<span class='cm-string'>'container'</span><span class='cm-tag'>&gt;</span>
    <span class='cm-tag'>&lt;h1</span><span class='cm-tag'>&gt;</span>Welcome to The Flint <span class='cm-atom'>&amp;amp;</span> Flame!<span class='cm-tag'>&lt;/h1</span><span class='cm-tag'>&gt;</span>
  <span class='cm-tag'>&lt;/div</span><span class='cm-tag'>&gt;</span>
  <span class='cm-tag'>&lt;footer</span> <span class='cm-attribute'>class</span>=<span class='cm-string'>'container'</span><span class='cm-tag'>&gt;</span>
    <span class='cm-tag'>&lt;hr</span> <span class='cm-tag'>/&gt;</span>
    <span class='cm-tag'>&lt;p</span> <span class='cm-attribute'>class</span>=<span class='cm-string'>'pull-left'</span><span class='cm-tag'>&gt;</span><span class='cm-atom'>&amp;copy;</span> 2013 The Flint <span class='cm-atom'>&amp;amp;</span> Flame<span class='cm-tag'>&lt;/p</span><span class='cm-tag'>&gt;</span>
    <span class='cm-tag'>&lt;p</span> <span class='cm-attribute'>class</span>=<span class='cm-string'>'pull-right'</span><span class='cm-tag'>&gt;</span><span class='cm-tag'>&lt;a</span> <span class='cm-attribute'>href</span>=<span class='cm-string'>'#/credits'</span><span class='cm-tag'>&gt;</span>Credits<span class='cm-tag'>&lt;/a</span><span class='cm-tag'>&gt;</span><span class='cm-tag'>&lt;/p</span><span class='cm-tag'>&gt;</span>
  <span class='cm-tag'>&lt;/footer</span><span class='cm-tag'>&gt;</span>
<span class='cm-tag'>&lt;/script</span><span class='cm-tag'>&gt;</span>
</pre>")


#-----------------------------------------------------------------------
#  Dom Ready
#-----------------------------------------------------------------------

jQuery ($) ->
  $(".video-wrapper").fitVids()