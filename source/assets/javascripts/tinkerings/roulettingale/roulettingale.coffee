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
    console.log winningsDollars
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