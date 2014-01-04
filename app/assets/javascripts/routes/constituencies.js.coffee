Poll.ConstituenciesRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'constituencies')

Poll.ConstituencyRoute = Ember.Route.extend
  model: (params) ->
    @store.find('constituency', params.id)
