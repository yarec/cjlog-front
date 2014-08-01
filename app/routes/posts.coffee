module.exports = App.PostsRoute = Em.Route.extend
    model: ->
        @store.find('post', {'page':1})

