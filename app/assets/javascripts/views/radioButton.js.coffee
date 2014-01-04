Ember.RadioButton = Ember.View.extend
  tagName: 'input'
  type: 'radio'
  attributeBindings: ['name', 'type', 'value', 'checked:checked:']
  click: ->
    @set "selection", @get("value")

  checked: (->
    @get('value') is @get('selection')
  ).property('selection')
