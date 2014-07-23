module.exports = App.IndexRoute = Ember.Route.extend
  model: ->
    'colors': ['red', 'yellow', 'blue'],
    'arrs':   [1..10]
