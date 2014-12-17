$(document).ready ->
  $(".letter-buttons").hide()
  $(document).on("mouseenter", ".letter-preview", ->

    $(".letter-buttons").show()

    return
  ).on "mouseleave", ".letter-preview", ->

    $(".letter-buttons").hide()

    return

  return

