$(document).ready ->
  $('.completed').hide()
  $('.not_completed').hide()
  init_form = ($form) ->
    $form.on("ajax:success", (e, data, status, xhr) ->
      $('#new_user :submit').prop('disabled', true)
      $('#user_name').prop('disabled', true)
      $('#user_email').prop('disabled', true)
      $('#user_city').prop('disabled', true)
      $form.children('.row .form-group.not_completed').hide()
      $form.children('.row').children('.form-group.completed').fadeIn(500)
      return
    ).on "ajax:error", (e, xhr, status, error) ->
      $form.children('.row .form-group.not_completed').fadeIn(500)
      return
  init_form $('form#programmer')
  init_form $('form#designer')
  init_form $('form#circuitry')
  $('.social a').hover ->
    $(this).children('img.white').hide()
    $(this).children('img.gray').show()
    return
  $('.social a').mouseover ->
    $(this).children('img.white').show()
    $(this).children('img.gray').hide()
    return
  $('form').hide()
  $('a.form_show').click (e) ->
    e.preventDefault()
    $('form').slideUp()
    id = $(@).data('target')
    $("##{id}").slideDown()
  return
