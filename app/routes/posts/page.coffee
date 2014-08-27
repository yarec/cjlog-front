module.exports = App.PostsPageRoute = Em.Route.extend
    model: (params) ->
        meta = this.store.metadataFor("post")
        if not params.size
            params.size=10

        console.log(params)
        @store.find('post', params)
    actions:
        refresh: ->
          @model().then (data) =>
            @set 'controller.model', data

