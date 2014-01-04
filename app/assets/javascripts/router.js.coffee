Poll.Router.reopen
  location: 'history'
  root: '/'

Poll.Router.map ->
  @resource 'responses', ->
    @route 'new'
    @resource 'response', path: ':response_id'
  @resource 'constituencies'

Poll.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo 'responses.new'
