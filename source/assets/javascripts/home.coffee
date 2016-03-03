# *************************************
#
#   Home
#   -> JS for the home page
#
# *************************************

# -------------------------------------
#   Fit Text
# -------------------------------------

jQuery(".fitText").fitText()

# -------------------------------------
#   Posts Graph
# -------------------------------------

new Chartist.Line(".ct-posts",
  labels: [
    "M", "A", "M", "J", "J", "A", "S", "O", "N", "D", "J", "F", "M", "A", "M", "J", "J", "A", "S", "O", "N", "D", "J", "F", "M", "A", "M", "J", "J", "A", "S", "O", "N", "D", "J"
  ]
  series: [[
    1, 0, 0, 4, 4, 1, 3, 1, 0, 0, 1, 1, 2, 2, 0, 0, 1, 1, 0, 0, 0, 0, 4, 0, 2, 1, 0, 1, 1, 2, 0, 2, 0, 0, 0
  ]]
,
  height: 100
  low: 0
  showArea: false
  showPoint: false
  axisX:
    offset: 10
    showLabel: false
    showGrid: false

  axisY:
    offset: 0
    showLabel: false
    showGrid: false
)

# -------------------------------------
#   Blips Graph
# -------------------------------------

new Chartist.Line(".ct-blips",
  labels: [
    0, 0, 0, 0, 0, 0, 4, 4, 3, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  ]
  series: [[
    0, 0, 0, 0, 0, 0, 4, 4, 3, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  ]]
,
  height: 100
  low: 0
  showArea: false
  showPoint: false
  axisX:
    offset: 10
    showLabel: false
    showGrid: false

  axisY:
    offset: 0
    showLabel: false
    showGrid: false
)

# -------------------------------------
#   Tinkerings Graph
# -------------------------------------

new Chartist.Line(".ct-tinkerings",
  labels: [
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
  ]
  series: [[
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
  ]]
,
  height: 100
  low: 0
  showArea: false
  showPoint: false
  axisX:
    offset: 10
    showLabel: false
    showGrid: false

  axisY:
    offset: 0
    showLabel: false
    showGrid: false
)
