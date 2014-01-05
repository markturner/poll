Poll.ResponsesIndexView = Ember.View.extend
  didInsertElement: ->
    # render chart

    $('#chart').attr('height', 400).attr('width', 400)
    data = [
      value: @get 'controller.willVoteCount'
      color: "#03A679"
    ,
      value: @get 'controller.wontVoteCount'
      color: "#FC5C65"
    ]

    ctx = $("#chart").get(0).getContext("2d")
    new Chart(ctx).Doughnut(data)
