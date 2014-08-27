module.exports = App.PostsPostRoute = Em.Route.extend
    model: (params)->
        meta = this.store.metadataFor("post")
        console.log(meta)
        console.log(params)
        pid =  parseInt(params.post_id)
        console.log(typeof pid)
        console.log('-------------')

        @store.find('post', 0+pid ,{t:1})
    actions:
        refresh: ->
          @model().then (data) =>
            @set 'controller.model', data

