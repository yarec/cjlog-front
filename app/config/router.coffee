module.exports = App.ApplicationAdapter = DS.RESTAdapter.extend
    host: 'http://localhost:3000'

module.exports = App.Router.map ->
    @resource 'posts', ->
        @resource 'post', {path: ':post_id'}
        @resource 'postpage', {path: '/page/:page_id'}


