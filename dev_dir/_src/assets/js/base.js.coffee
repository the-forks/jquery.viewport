@ViewportDetector = do ->
  init: ->
    $('.detected').viewportTrack
      forceViewport: '#base_viewport'
      tracker: (state) ->
        console.clear()

        log $('.detected:in-viewport')

        log $('.detected:above-the-viewport')
        log $('.detected:below-the-viewport')
        log $('.detected:left-of-viewport')
        log $('.detected:right-of-viewport')

        log $('.detected:partly-above-the-viewport')
        log $('.detected:partly-below-the-viewport')
        log $('.detected:partly-left-of-viewport')
        log $('.detected:partly-right-of-viewport')

$ ->
  do ViewportDetector.init
