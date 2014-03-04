$ ->
  $('#guitar_year').on 'blur', suggestGuitarInfo

suggestGuitarInfo = ->
  suggestTitle()

suggestTitle = ->
  year = $('#guitar_year').val()
  brand = $('#guitar_brand').val()
  title = Guitars.suggestTitle(brand, year)
  $('#guitar_title').val(title)
