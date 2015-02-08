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

# -------------------------------------
#   Convert Winnings
# -------------------------------------

convertWinnings = ->
	$('.js-winnings').each ->
		currentElement = $(this)
		winningsCount = currentElement.html()
		winningsDollars = (winningsCount * 50)
		$(this).html(winningsDollars)

convertWinnings()

# -------------------------------------
#   Convert Max Bet
# -------------------------------------

convertMaxBet = ->
	$('.js-maxBet').each ->
		currentElement = $(this)
		betCount = currentElement.html()
		maxBetDollars = (betCount * 50)
		$(this).html(maxBetDollars)

convertMaxBet()

# -------------------------------------
#   Convert Max Bet
# -------------------------------------

convertMinBankroll = ->
	$('.js-minBankroll').each ->
		currentElement = $(this)
		betCount = currentElement.html()
		minBankrollDollars = (betCount * 50)
		$(this).html(minBankrollDollars)

convertMinBankroll()

# -------------------------------------
#   Check Mirage
# -------------------------------------

checkMirage = ->
	$('.js-checkMirage').each ->
		currentElement = $(this)
		maxBet = currentElement.attr("data-maxbet")
		if maxBet >= 400
			$(this).html("&#10008;").addClass "negative"

checkMirage()

# -------------------------------------
#   Check MGM
# -------------------------------------

checkMGM = ->
	$('.js-checkMGM').each ->
		currentElement = $(this)
		maxBet = currentElement.attr("data-maxbet")
		if maxBet >= 200
			$(this).html("&#10008;").addClass "negative"

checkMGM()

# -------------------------------------
#   Check Beau
# -------------------------------------

checkBeau = ->
	$('.js-checkBeau').each ->
		currentElement = $(this)
		maxBet = currentElement.attr("data-maxbet")
		if maxBet >= 300
			$(this).html("&#10008;").addClass "negative"

checkBeau()