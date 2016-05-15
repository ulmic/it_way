$.extend($.scrollTo.defaults, {
    axis: 'y',
    duration: 2000
})
$(document).ready ->
  $('.completed').hide()
  $('.not_completed').hide()
  $('.fa-spinner').hide()
  init_form = ($form) ->
    $form.on("ajax:success", (e, data, status, xhr) ->
      $form.parent().html("<div class='alert alert-success request-sended'> Заявка принята! </div>")
      $form.slideUp()
      $.scrollTo ".request-sended"
    ).on "ajax:error", (e, xhr, status, error) ->
      $form.after("<p class='alert alert-danger'> Произошла ошибка:<br/><br/>" + xhr.responseJSON['errors'] + "</p>")
      $form.after("<p class='alert alert-info'><i class='fa fa-info'></i> Проблемы с подачей заявки? Перейдите в наше сообщество во ВКонтакте <a href='http://vk.com/it_way'>vk.com/it_way</a> и напишите сообщение в сообщество. Либо можете отправить письмо на почту <a href='mailto:admin@ulmic.ru'>admin@ulmic.ru</a>.</p>")
      return
  init_form $('form#new_user')
  $('.social a').hover ->
    $(this).children('img.white').hide()
    $(this).children('img.gray').show()
    return
  $('.social a').mouseover ->
    $(this).children('img.white').show()
    $(this).children('img.gray').hide()
    return
  # $('form').hide()
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
  $('.scroll').click (e) ->
    e.preventDefault()
    $.scrollTo "##{$(@).data('id')}"
  return
