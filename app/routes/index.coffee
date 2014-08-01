module.exports = App.IndexRoute = Ember.Route.extend
    redirect: ->
        @transitionTo 'posts'

###
model: ->
    'colors': ['red', 'yellow', 'blue'],
    'arrs':   [1..10]
###
