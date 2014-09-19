# Makes the firebase writeable
myFirebaseRef = new Firebase("https://dandenney.firebaseio.com/")

# Manually updating the recent finds list
# recentFindsref = new Firebase("https://dandenney.firebaseio.com/recentFinds")
# recentFindsref.push({
#   title: "perfBar"
#   url: "http://lafikl.github.io/perfBar"
#   description: "Simple way to collect and look at your website performance metrics quickly"
# })
# recentFindsref.push({
#   title: "Nicholas Felton's 2013 Annual Report"
#   url: "http://feltron.com/FAR13.html"
#   description: "Nicholas pushed his tracking to a whole new level this year."
# })

# count = 0
# recentFindsref.on "child_added", (snap) ->
#   count++
#   console.log "added", snap.name()
#   return


# length will always equal count, since snap.val() will include every child_added event
# triggered before this point
# recentFindsref.once "value", (snap) ->
#   console.log "initial data loaded!", Object.keys(snap.val()).length is count
#   return

# Create a global recentFinds reference
recentFindsref = new Firebase("https://dandenney.firebaseio.com/recentFinds")

# Send recentFind data to Firebase on click of #findSubmit
$("#findSubmit").click ->

  # Get the data from the inputs
  findTitle = $("#findTitle").val()
  findUrl = $("#findUrl").val()
  findDescription = $("#findDescription").val()

  # Update the recent finds list
  recentFindsref.push({
    title: findTitle
    url: findUrl
    description: findDescription
  })

# Retrieve recentFind data from Firebase
$ ->
  recentFindsref.on 'child_added', (snapshot) ->
    url = snapshot.val().url
    title = snapshot.val().title
    description = snapshot.val().description

    # myStringArray = [
    #   "Hello"
    #   "World"
    # ]
    # arrayLength = myStringArray.length
    # i = 0
    #
    # while i < arrayLength
    #   alert myStringArray[i]
    #   i++

    $("#recentFinds").append(
      "<li>" + "<h3>" +  "<a href='" + url + "'>" + title + "</a>" + "</h3>" + "<p>" + description + "</p>" +"</li>"
    )


# postsRef.on('value', function (snapshot) {
#   console.log(snapshot.val());
# }, function (errorObject) {
#   console.log('The read failed: ' + errorObject.code);
# });

# Create a global recentFinds reference
coffeeRef = new Firebase("https://dandenney.firebaseio.com/coffee")

# Send recentFind data to Firebase on click of #findSubmit
$("#coffeeCount").change ->
  # Get the data from the inputs
  coffeeCount = $(this).val()
  coffeeDate = $('#coffeeDate').val()

  # Update the recent finds list
  coffeeRef.update({
    date: coffeeDate
    count: coffeeCount
  })
