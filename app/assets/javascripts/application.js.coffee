#= require jquery
#= require moment
#= require jquery_ujs
#= require turbolinks
#= require select2
#= require tabs

$ ->
  $('.select2').select2()
  $('.link').click ->
    location.href = $(this).data('href')
