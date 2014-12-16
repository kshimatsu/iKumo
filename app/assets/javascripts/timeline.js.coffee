$(document).ready ->
  $(document).on("mouseenter", ".letter", ->
    $(this).find(":button").show()
    return
  ).on "mouseleave", ".letter", ->
    $(this).find(":button").hide()
    return

  return

