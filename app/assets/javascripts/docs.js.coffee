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

      $(".control").css({ "height" : '70%' })
      $(".big-panel").slideDown(180)
    else
      $(".big-panel").slideUp(180)
      $(".control").css({ "height": 0 })


  $(".sub-title a").on "click", ->
    $(".big-panel").slideUp(180)
    $(".control").css({ "height": 0 })


  $(".header").on "click", ->
    $(window).scrollTop(0)


    #/
   #/ Select Language
  #/========================
  $(".inner pre:nth-of-type(" + ($("option:selected").index() + 1) + ") code").addClass("selected-lang")

  set_entry_height = ->
    $(".document-block > .inner").each ->
      if $(this).height() < $(this).find(".selected-lang").innerHeight()
        $(this).height($(this).find(".selected-lang").innerHeight())
      else
        $(this).find(".selected-lang").height($(this).innerHeight())

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

