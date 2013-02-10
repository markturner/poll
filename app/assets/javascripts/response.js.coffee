# initial state
if $("input[name$='response[will_vote]']").val() == 'true'
  $("#candidate_field").show()
else
  $("#candidate_field").hide()

# show when will vote is true, hide when false
$("input[name$='response[will_vote]']").click ->
  if $(@).val() == 'true'
    $("#candidate_field").show()
  else
    $("#candidate_field").hide()