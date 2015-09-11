$(document).ready ->
  if /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)
    src = $('.video.youtube iframe').prop('src')
    $('.video.youtube iframe').prop('src', src.replace('autoplay=1', ''))
