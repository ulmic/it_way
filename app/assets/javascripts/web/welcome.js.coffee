$(document).ready ->
  $('.completed').hide()
  $('.not_completed').hide()
  $('.fa-spinner').hide()
  init_form = ($form) ->
    $form.on("ajax:success", (e, data, status, xhr) ->
      $('#new_user :submit').prop('disabled', true)
      $('#user_name').prop('disabled', true)
      $('#user_email').prop('disabled', true)
      $('#user_city').prop('disabled', true)
      $form.children('.row .form-group.not_completed').hide()
      $form.children('.row').children('.form-group.completed').fadeIn(500)
      $form.find("input[type=text], textarea").val("")
      $form.children('.row').last().children('.form-group').first().children('i').hide()
      return
    ).on "ajax:error", (e, xhr, status, error) ->
      $form.children('.row .form-group.not_completed').fadeIn(500)
      $form.children('.row').last().children('.form-group').first().children('i').hide()
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
    id = $(@).data('target')
    if $("##{id}").css('display') == 'none'
      $('form').slideUp()
      $("##{id}").slideDown()
    else
      $('form').slideUp()
  $('.btn-outline-dark').click ->
    $(@).parents('div').first().children('.fa-spinner').show()
  return
