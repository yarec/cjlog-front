###
        @store.find('post', {'page':2})

        @store.findQuery 'post',
             search: @get('controller.term')
             page: @get('controller.page')
module.exports = App.PostsRoute = Em.Route.extend
    model: (params) ->
        meta = this.store.metadataFor("post")
        @store.find('post', {'page':params.page_id})
###

