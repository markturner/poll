Poll.ResponsesIndexRoute = Ember.Route.extend
  model: ->
    @store.find('response')
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'responses')
    controller.set('content', model)

Poll.ResponseRoute = Ember.Route.extend
  model: (params) ->
    @store.find('party', params.id)

Poll.ResponsesNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('response')

  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'responses.new')
    controller.set('content', model)

  actions:
    save: ->
      @modelFor('newResponse').save()
