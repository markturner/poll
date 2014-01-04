Poll.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'responses.new'
  ).property('currentRoute')

  isResults: (->
    @get('currentRoute') == 'responses'
  ).property('currentRoute')
