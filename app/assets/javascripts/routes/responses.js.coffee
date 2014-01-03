Poll.ResponsesRoute = Ember.Route.extend
  model: ->
    @get('store').find('response')
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'responses')
    controller.set("content", model)

Poll.ResponseRoute = Ember.Route.extend
  model: (params) ->
    @get('store').find('response', 1)

Poll.ResponsesNewRoute = Ember.Route.extend
  model: ->
    @get('store').createRecord('response')

  actions:
    save: ->
      @modelFor('newResponse').save()
