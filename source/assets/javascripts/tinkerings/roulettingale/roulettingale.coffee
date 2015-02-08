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

# -------------------------------------
#   Percentage Red/Black
# -------------------------------------

redBlackPercentage = ->
	$('.js-spins').each ->
		currentElement = $(this)
		redCount = $(this).find('.js-n-red .positive--a').length
		blackCount = $(this).find('.js-n-red .negative--a').length
		redBlackTotal = redCount + blackCount
		redRaw = redCount / redBlackTotal
		redPercentage = (redRaw * 100).toFixed(2) + '%'
		blackRaw = blackCount / redBlackTotal
		blackPercentage = (blackRaw * 100).toFixed(2) + '%'
		$(this).siblings().find('.js-prct-red').html(redPercentage)
		$(this).siblings().find('.js-prct-black').html(blackPercentage)

redBlackPercentage()

# -------------------------------------
#   Percentage Even/Odd
# -------------------------------------

evenOddPercentage = ->
	$('.js-spins').each ->
		currentElement = $(this)
		evenCount = $(this).find('.js-n-even .positive--a').length
		oddCount = $(this).find('.js-n-even .negative--a').length
		evenoddTotal = evenCount + oddCount
		evenRaw = evenCount / evenoddTotal
		evenPercentage = (evenRaw * 100).toFixed(2) + '%'
		oddRaw = oddCount / evenoddTotal
		oddPercentage = (oddRaw * 100).toFixed(2) + '%'
		$(this).siblings().find('.js-prct-even').html(evenPercentage)
		$(this).siblings().find('.js-prct-odd').html(oddPercentage)

evenOddPercentage()

# -------------------------------------
#   Percentage 1-18/19-36
# -------------------------------------

n1181936Percentage = ->
	$('.js-spins').each ->
		currentElement = $(this)
		n118Count = $(this).find('.js-n-118 .positive--a').length
		n1936Count = $(this).find('.js-n-1936 .negative--a').length
		n118n1936Total = n118Count + n1936Count
		n118Raw = n118Count / n118n1936Total
		n118Percentage = (n118Raw * 100).toFixed(2) + '%'
		n1936Raw = n1936Count / n118n1936Total
		n1936Percentage = (n1936Raw * 100).toFixed(2) + '%'
		$(this).siblings().find('.js-prct-118').html(n118Percentage)
		$(this).siblings().find('.js-prct-1936').html(n1936Percentage)

n1181936Percentage()

# Example

example = ->
	examplePos = $('.js-id001 .js-n-118 .positive--a').length;
	exampleNeg = $('.js-id001 .js-n-118 .negative--a').length;
	exampleTot = examplePos + exampleNeg
	examplePosPer = examplePos / exampleTot
	exampleNegPer = exampleNeg / exampleTot
	$('.example-positive').append(examplePosPer)
	$('.example-negative').append(exampleNegPer)

example()