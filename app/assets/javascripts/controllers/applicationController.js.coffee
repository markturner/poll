Poll.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'constituencies'
  ).property('currentRoute')

  isResults: (->
    @get('currentRoute') == 'responses'
  ).property('currentRoute')
