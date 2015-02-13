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

# convertWinnings()

# -------------------------------------
#   Convert Max Bet
# -------------------------------------

convertMaxBet = ->
	$('.js-maxBet').each ->
		currentElement = $(this)
		betCount = currentElement.html()
		maxBetDollars = (betCount * 50)
		$(this).html(maxBetDollars)

# convertMaxBet()

# -------------------------------------
#   Convert Max Bet
# -------------------------------------

convertMinBankroll = ->
	$('.js-minBankroll').each ->
		currentElement = $(this)
		betCount = currentElement.html()
		minBankrollDollars = (betCount * 50)
		$(this).html(minBankrollDollars)

# convertMinBankroll()

# -------------------------------------
#   Check Mirage
# -------------------------------------

checkMirage = ->
	$('.js-checkMirage').each ->
		currentElement = $(this)
		maxBet = currentElement.attr("data-maxbet")
		if maxBet >= 400
			$(this).html("&#10008;").addClass "negative"

# checkMirage()

# -------------------------------------
#   Check MGM
# -------------------------------------

checkMGM = ->
	$('.js-checkMGM').each ->
		currentElement = $(this)
		maxBet = currentElement.attr("data-maxbet")
		if maxBet >= 200
			$(this).html("&#10008;").addClass "negative"

# checkMGM()

# -------------------------------------
#   Check Beau
# -------------------------------------

checkBeau = ->
	$('.js-checkBeau').each ->
		currentElement = $(this)
		maxBet = currentElement.attr("data-maxbet")
		if maxBet >= 300
			$(this).html("&#10008;").addClass "negative"

# checkBeau()

# -------------------------------------
#   Percentage Red/Black
# -------------------------------------

redBlackPercentage = ->
	$('.js-spins').each ->
		currentElement = $(this)
		redCount = $(this).find('.js-n-red .positive--a').length
		blackCount = $(this).find('.js-n-black .positive--a').length
		redBlackTotal = redCount + blackCount
		redRaw = redCount / redBlackTotal
		redPercentage = (redRaw * 100).toFixed(2) + '%'
		blackRaw = blackCount / redBlackTotal
		blackPercentage = (blackRaw * 100).toFixed(2) + '%'
		$(this).parent().siblings().find('.js-count-red').html(redCount)
		$(this).parent().siblings().find('.js-count-black').html(blackCount)
		$(this).parent().siblings().find('.js-prct-red').html(redPercentage)
		$(this).parent().siblings().find('.js-prct-black').html(blackPercentage)

redBlackPercentage()

# -------------------------------------
#   Percentage Even/Odd
# -------------------------------------

evenOddPercentage = ->
	$('.js-spins').each ->
		currentElement = $(this)
		evenCount = $(this).find('.js-n-even .positive--a').length
		oddCount = $(this).find('.js-n-odd .positive--a').length
		evenoddTotal = evenCount + oddCount
		evenRaw = evenCount / evenoddTotal
		evenPercentage = (evenRaw * 100).toFixed(2) + '%'
		oddRaw = oddCount / evenoddTotal
		oddPercentage = (oddRaw * 100).toFixed(2) + '%'
		$(this).parent().siblings().find('.js-count-even').html(evenCount)
		$(this).parent().siblings().find('.js-count-odd').html(oddCount)
		$(this).parent().siblings().find('.js-prct-even').html(evenPercentage)
		$(this).parent().siblings().find('.js-prct-odd').html(oddPercentage)

evenOddPercentage()

# -------------------------------------
#   Percentage 1-18/19-36
# -------------------------------------

n1181936Percentage = ->
	$('.js-spins').each ->
		currentElement = $(this)
		n118Count = $(this).find('.js-n-118 .positive--a').length
		n1936Count = $(this).find('.js-n-1936 .positive--a').length
		n118n1936Total = n118Count + n1936Count
		n118Raw = n118Count / n118n1936Total
		n118Percentage = (n118Raw * 100).toFixed(2) + '%'
		n1936Raw = n1936Count / n118n1936Total
		n1936Percentage = (n1936Raw * 100).toFixed(2) + '%'
		$(this).parent().siblings().find('.js-count-118').html(n118Count)
		$(this).parent().siblings().find('.js-count-1936').html(n1936Count)
		$(this).parent().siblings().find('.js-prct-118').html(n118Percentage)
		$(this).parent().siblings().find('.js-prct-1936').html(n1936Percentage)

n1181936Percentage()

# -------------------------------------
#   Percentage 0
# -------------------------------------

n0Percentage = ->
	$('.js-spins').each ->
		currentElement = $(this)
		n0Count = $(this).find('.js-n-0 .positive--a').length
		$(this).parent().siblings().find('.js-count-0').html(n0Count)

n0Percentage()


compareWagers = ->
	$('.js-wagers').each ->
		currentElement = $(this)
		vsPlaced = parseInt($(this).find('.js-count-placed').text(),10)
		vs118 = parseInt($(this).find('.js-count-118').text(),10)
		vs1936 = parseInt($(this).find('.js-count-1936').text(),10)
		vsOdd = parseInt($(this).find('.js-count-odd').text(),10)
		vsEven = parseInt($(this).find('.js-count-even').text(),10)
		vsRed = parseInt($(this).find('.js-count-red').text(),10)
		vsBlack = parseInt($(this).find('.js-count-black').text(),10)
		compare118 = (vsPlaced) - (vs118)
		compare1936 = (vsPlaced) - (vs1936)
		compareOdd = (vsPlaced) - (vsOdd)
		compareEven = (vsPlaced) - (vsEven)
		compareRed = (vsPlaced) - (vsRed)
		compareBlack = (vsPlaced) - (vsBlack)

		if vs118 > vs1936
			$(this).find('.js-vs-118').html(compare118)
			$(this).find('.js-vs-1936').html("-")
		else
			$(this).find('.js-vs-1936').html(compare1936)
			$(this).find('.js-vs-118').html("-")

		if vsOdd > vsEven
			$(this).find('.js-vs-odd').html(compareOdd)
			$(this).find('.js-vs-even').html("-")
		else
			$(this).find('.js-vs-even').html(compareEven)
			$(this).find('.js-vs-odd').html("-")

		if vsRed > vsBlack
			$(this).find('.js-vs-red').html(compareRed)
			$(this).find('.js-vs-black').html("-")
		else
			$(this).find('.js-vs-black').html(compareBlack)
			$(this).find('.js-vs-red').html("-")

compareWagers()