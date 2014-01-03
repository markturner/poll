Poll.ConstituenciesRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'constituencies')

Poll.ConstituencyRoute = Ember.Route.extend
  model: (params) ->
    @get('store').find('constituency', params.id)
