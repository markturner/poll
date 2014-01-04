Poll.ResponsesIndexController = Ember.ArrayController.extend
  willVoteCount: (->
    willVotes = @filter (response) ->
      response.get('will_vote') is true
    willVotes.get 'length'
  ).property('length')

  wontVoteCount: (->
    wontVotes = @filter (response) ->
      response.get('will_vote') is false
    wontVotes.get 'length'
  ).property('length')
