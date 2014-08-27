module.exports = App.ApplicationAdapter = DS.RESTAdapter.extend
    host: 'http://localhost:3000'

module.exports = App.Router.map ->
    @resource 'posts', ->
        @route 'post', {path: ':post_id'}
        @route 'page', {path: '/page/:page'}
        @route 'page', {path: '/page/:page/:size'}


