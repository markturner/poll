Poll.ResponsesNewController = Ember.ObjectController.extend
  actions:
    respond: ->
      @content.save().then =>
        @transitionToRoute('responses')

