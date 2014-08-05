module.exports = App.PostsIndexRoute = Em.Route.extend
    model: (params) ->
        meta = this.store.metadataFor("post")
        @store.find('post', {'page':params.page_id})
    actions:
        refresh: ->
          @model().then (data) =>
            @set 'controller.model', data

