#= require jquery
#= require moment
#= require jquery_ujs
#= require turbolinks
#= require select2
#= require tabs
#= require jquery.webui-popover.min

$ ->
  $('.select2').select2()
  $('.link').click ->
    location.href = $(this).data('href')
  $('.blank').prop('target', '_blank')
