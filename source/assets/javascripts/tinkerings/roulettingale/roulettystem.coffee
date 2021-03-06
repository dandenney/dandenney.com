# *************************************
#
#   Click Out
#   -> Run action when document is clicked
#
# *************************************
#
# @param $element { jQuery object }
# @param run      { function }
#
# *************************************

pseudoStreak = ->
	$('.js-result.js-l').parent().addClass 'js-l'

pseudoStreak()

# -------------------------------------
#   Toggle
# -------------------------------------

toggleThing = ->
	$('.js-toggler').on 'click', ->
		$(this).toggleClass('is-toggled')
		$(this).parent().parent().next().toggleClass('is-hidden')

toggleThing()

showFirst = ->
	$('.session:first-of-type').find('.js-toggler').trigger('click')

showFirst()