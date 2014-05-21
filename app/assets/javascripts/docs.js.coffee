jQuery ->
  header_height = $(".header").innerHeight()
  footer_height = $(".footer").innerHeight()

    #/
   #/ Navigation
  #/========================

  $(".main-title").on "click hover", (e)->
    $(".main-title").removeClass("selected")
    $(e.currentTarget).addClass("selected")

  $(".handle").on "click", ->
    if $(".big-panel").is(":hidden")
      $(".big-panel").slideDown(300)
    else
      $(".big-panel").hide()

  $(".sub-title a").on "click", ->
    $(".big-panel").hide()

  $(".header").on "click", ->
    $(window).scrollTop(0)


    #/
   #/ Select Language
  #/========================
  $(".inner pre:nth-of-type(" + ($("option:selected").index() + 1) + ") code").addClass("selected-lang")

  set_entry_height = ->
    $(".document-block > .inner").each ->
      $(this).height($(this).find(".selected-lang").innerHeight())

  $("select").on "change", ()->
    $("code").removeClass("selected-lang")
    $(".inner pre:nth-of-type(" + ($("option:selected").index() + 1) + ") code").addClass("selected-lang")

    $(".content > .inner:last-child .entry:last-child").css({
      height: $(window).height() - (header_height + footer_height)
    })

    set_entry_height()

    $.waypoints("refresh")

  $(".code-editor").ace({ theme: 'twilight', lang: 'ruby', height: "200", width: "100%" })

  set_entry_height()


  $(".spawn-button").on "ajax:complete", (e)->
    alert("HTMLが生成されました。")

