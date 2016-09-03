#= require active_admin/base
$(document).ready ->
  prepareSortable = (string) ->
    subString = string.match(/\d+/g)
    array = []
    i = 0
    while i < subString.length
      array.push(subString[i])
      i++
    array

  $('#index_table_buildings > tbody').sortable
    axis: 'y'
    cursor: 'move'
    scroll: true
    update: ->
      $.ajax
        type: 'put'
        context: this
        data: {
          sortable: prepareSortable($(this).sortable('serialize')),
          building_id: $(this).find('tr')[0].id.split('__')[1]
        }
        dataType: 'script'
        complete: (request) ->
          $(this).effect 'highlight'
        url: '/admin/buildings/sort'
