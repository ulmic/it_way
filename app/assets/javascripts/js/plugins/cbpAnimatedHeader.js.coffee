###*
cbpAnimatedHeader.js v1.0.0
http://www.codrops.com

Licensed under the MIT license.
http://www.opensource.org/licenses/mit-license.php

Copyright 2013, Codrops
http://www.codrops.com
###
cbpAnimatedHeader = (->
  init = ->
    window.addEventListener "scroll", ((event) ->
      unless didScroll
        didScroll = true
        setTimeout scrollPage, 250
      return
    ), false
    return
  scrollPage = ->
    sy = scrollY()
    if sy >= changeHeaderOn
      $(".navbar-brand").fadeIn()
      classie.remove header, "navbar-expanded"
    else
      $(".navbar-brand").fadeOut()
      classie.add header, "navbar-expanded"
    didScroll = false
    return
  scrollY = ->
    window.pageYOffset or docElem.scrollTop
  docElem = document.documentElement
  header = document.querySelector(".navbar-fixed-top")
  didScroll = false
  changeHeaderOn = 300
  init()
  return
)()
