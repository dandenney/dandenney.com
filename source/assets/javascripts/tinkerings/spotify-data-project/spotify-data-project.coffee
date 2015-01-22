# *************************************************
#
#   Chartist
#   -> Various charts for the Spotify Data Project
#
# *************************************************
#
# @param element { jQuery object }
# @param speed   { integer }
#
# *************************************************

spotifyCharts = ->
	new Chartist.Line(".ct-chart",
		labels: [
			"Jan 5"
			"Jan 12"
			"Jan 19"
		]
		series: [[
			8
			6
			8
		]]
	,
		axisY:
    	scaleMinSpace: 22
    	showLabel: false
			offset: 0
		height: 390
		high: 10
		low: 0
		showArea: true
	)

# -------------------------------------------------
#   Usage
# -------------------------------------------------

# spotifyCharts()

# -------------------------------------------------
#   Highlight Trail
# -------------------------------------------------

highlightTrail = ->
	$('td').on "click", ->
	  $('td').removeClass('is-pathItem')
  	classNames = $(this).attr('class')
  	console.log (classNames)
  	$(this).addClass('is-pathItem')
  	$(this).parent().siblings().find('td.' + classNames).addClass('is-pathItem')
highlightTrail()
