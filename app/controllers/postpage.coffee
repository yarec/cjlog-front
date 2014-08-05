# from http://jsbin.com/ucanam/5886/edit

incrementPage = (amt) ->
    return Ember.computed('page', 'numPages', ->
        newPage = parseInt(this.get('page'), 10) + amt
        if (newPage <= parseInt(this.get('numPages'), 10) && newPage >= 1)
            newPage;
    )
###
    return Ember.computed('page', 'numPages', ->
        newPage = parseInt(this.get('page'), 10) + amt
        if (newPage <= parseInt(this.get('numPages'), 10) && newPage >= 1)
            newPage;
###

module.exports = App.PostpageController = Em.ArrayController.extend
  queryParams: ['sortBy', 'page', 'pageSize'],
  page: 1,
  pageSize: 10,

  pages: ( ->
    meta = this.store.metadataFor("post")
    console.log(meta)

    pageSize = this.get('pageSize')
    pages = Math.ceil(meta.total / pageSize)
    pagesArray = []

    for i in [0..pages]
      pagesArray.push(i + 1);

    pagesArray
  ).property('pageSize', 'model.length'),

  numPages: ( ->
    meta = this.store.metadataFor("post")
    pageSize = this.get('pageSize')
    Math.ceil(meta.total / pageSize)
  ).property('pageSize'),

  paged: ( ->
    return @store.find('post', {'page':2});
  ).property('page', 'arrangedContent', 'pageSize'),

  previousPage: incrementPage(-1),
  nextPage:     incrementPage(1),

  newPageSize: Ember.computed.oneWay('pageSize'),

  actions: {
    updatePageSize: ->
      this.set('pageSize', parseInt(this.get('newPageSize'), 10))
  }
