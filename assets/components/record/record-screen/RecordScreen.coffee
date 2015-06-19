Watd.module('Watd.Record').RecordScreen = Polymer({
  is: 'watd-record-screen'

  ready: ->
    @mapElement = @$['google-map'].addEventListener('google-map-ready',
      (event) =>
        @$.watcher.watch()
    )
})