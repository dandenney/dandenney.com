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
		$(this).siblings().find('.js-count-red').html(redCount)
		$(this).siblings().find('.js-count-black').html(blackCount)
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
		oddCount = $(this).find('.js-n-odd .positive--a').length
		evenoddTotal = evenCount + oddCount
		evenRaw = evenCount / evenoddTotal
		evenPercentage = (evenRaw * 100).toFixed(2) + '%'
		oddRaw = oddCount / evenoddTotal
		oddPercentage = (oddRaw * 100).toFixed(2) + '%'
		$(this).siblings().find('.js-count-even').html(evenCount)
		$(this).siblings().find('.js-count-odd').html(oddCount)
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
		n1936Count = $(this).find('.js-n-1936 .positive--a').length
		n118n1936Total = n118Count + n1936Count
		n118Raw = n118Count / n118n1936Total
		n118Percentage = (n118Raw * 100).toFixed(2) + '%'
		n1936Raw = n1936Count / n118n1936Total
		n1936Percentage = (n1936Raw * 100).toFixed(2) + '%'
		$(this).siblings().find('.js-count-118').html(n118Count)
		$(this).siblings().find('.js-count-1936').html(n1936Count)
		$(this).siblings().find('.js-prct-118').html(n118Percentage)
		$(this).siblings().find('.js-prct-1936').html(n1936Percentage)

n1181936Percentage()

# -------------------------------------
#   Percentage 0
# -------------------------------------

n0Percentage = ->
	$('.js-spins').each ->
		currentElement = $(this)
		n0Count = $(this).find('.js-n-0 .positive--a').length
		$(this).siblings().find('.js-count-0').html(n0Count)

n0Percentage()

# -------------------------------------
#   Percentage All
# -------------------------------------

percentageAll = ->
	$('.js-spins-all').each ->

		currentElement = $(this)
		n118Count = $(this).find('.js-n-118 .positive--a').length
		n1936Count = $(this).find('.js-n-1936 .positive--a').length
		evenCount = $(this).find('.js-n-even .positive--a').length
		oddCount = $(this).find('.js-n-odd .positive--a').length
		redCount = $(this).find('.js-n-red .positive--a').length
		blackCount = $(this).find('.js-n-black .positive--a').length
		n0Count = $(this).find('.js-n-0 .positive--a').length

		$(this).find('.js-n-118-all').html(n118Count)
		$(this).find('.js-n-1936-all').html(n1936Count)
		$(this).find('.js-n-even-all').html(evenCount)
		$(this).find('.js-n-odd-all').html(oddCount)
		$(this).find('.js-n-red-all').html(redCount)
		$(this).find('.js-n-black-all').html(blackCount)
		$(this).find('.js-n-0-all').html(n0Count)

		nAllTotal = (n118Count + n1936Count + evenCount + oddCount + redCount + blackCount + n0Count)

		n118AllRaw = (n118Count / nAllTotal)
		n118AllPercentage = (n118AllRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-118-prct').html(n118AllPercentage)

		n1936AllRaw = (n1936Count / nAllTotal)
		n1936AllPercentage = (n1936AllRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-1936-prct').html(n1936AllPercentage)

		evenAllRaw = (evenCount / nAllTotal)
		evenAllPercentage = (evenAllRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-even-prct').html(evenAllPercentage)

		oddAllRaw = (oddCount / nAllTotal)
		oddAllPercentage = (oddAllRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-odd-prct').html(oddAllPercentage)

		redAllRaw = (redCount / nAllTotal)
		redAllPercentage = (redAllRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-red-prct').html(redAllPercentage)

		blackAllRaw = (blackCount / nAllTotal)
		blackAllPercentage = (blackAllRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-black-prct').html(blackAllPercentage)

		n0AllRaw = (n0Count / nAllTotal)
		n0AllPercentage = (n0AllRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-0-prct').html(n0AllPercentage)

		vs1181936 = (n118Count + n1936Count + n0Count)
		vsOddEven = (oddCount + evenCount + n0Count)
		vsRedBlack = (redCount + blackCount + n0Count)
		vsn0 = (redCount + blackCount + n0Count)

		n118VsRaw = (n118Count / vs1181936)
		n118VsPercentage = (n118VsRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-118-vs').html(n118VsPercentage)

		n1936VsRaw = (n1936Count / vs1181936)
		n1936VsPercentage = (n1936VsRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-1936-vs').html(n1936VsPercentage)

		evenVsRaw = (evenCount / vsOddEven)
		evenVsPercentage = (evenVsRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-even-vs').html(evenVsPercentage)

		oddVsRaw = (oddCount / vsOddEven)
		oddVsPercentage = (oddVsRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-odd-vs').html(oddVsPercentage)

		redVsRaw = (redCount / vsRedBlack)
		redVsPercentage = (redVsRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-red-vs').html(redVsPercentage)

		blackVsRaw = (blackCount / vsRedBlack)
		blackVsPercentage = (blackVsRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-black-vs').html(blackVsPercentage)

		n0VsRaw = (n0Count / vsn0)
		n0VsPercentage = (n0VsRaw * 100).toFixed(2) + '%'
		$(this).find('.js-n-0-vs').html(n0VsPercentage)

percentageAll()


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