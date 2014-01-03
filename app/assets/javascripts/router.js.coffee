Poll.Router.reopen
  location: 'history'

Poll.Router.map ->
  @resource 'responses', path: '/', ->
    @route 'new'
    @resource 'response', path: ':response_id'
  @resource 'constituencies'
