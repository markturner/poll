if $('#chart').length > 0
  alert('chart')
  data = [
    value: $('#will-vote-count').html().replace(/(<([^>]+)>)/ig,"")
    color: "#F38630"
  ,
    value: $('#wont-vote-count').html().replace(/(<([^>]+)>)/ig,"")
    color: "#E0E4CC"
  ]

  ctx = $("#chart").get(0).getContext("2d")
  new Chart(ctx).Doughnut(data)
