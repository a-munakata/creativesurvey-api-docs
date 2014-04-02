jQuery ->

  hljs.initHighlightingOnLoad();
  header_height = $(".header").innerHeight()
  footer_height = $(".footer").innerHeight()

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

  , { offset: header_height + 20 }

  $(".entry:last-child").css({
    height: $(window).height() - (header_height + footer_height)
  })

  $("code." + $("option:selected").data("lang")).addClass("selected-lang")

  $("select").on "change", ()->
    $("code").removeClass("selected-lang")
    $("code." + $("option:selected").data("lang")).addClass("selected-lang")

    $(".entry:last-child").css({
      height: $(window).height() - (header_height + footer_height)
    })

    $.waypoints('refresh')
