jQuery ->
  #  hljs.initHighlightingOnLoad();
  header_height = $(".header").innerHeight()
  footer_height = $(".footer").innerHeight()

    #/
   #/ Navigation
  #/========================

  $(".entry").waypoint ()->
    $(".sub-title").removeClass("selected")
    $(".sub-title[data-entry=" + $(this).data("entry") + "]").addClass("selected")

  , { offset: header_height }

  $(".entry").waypoint ()->

    main_title = $(".main-title[data-category=" + $(this).data("category") + "]")

    if $(".main-title.selected").length > 0
      $(".main-title").removeClass("selected")
      main_title.addClass("selected")
    else
      main_title.addClass("selected")

  , { offset: "200px" }

  $(".content > .inner:last-child .entry:last-child").css({
    height: $(window).height() - (header_height + footer_height)
  })

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

