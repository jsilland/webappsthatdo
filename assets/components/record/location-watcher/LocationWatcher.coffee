Watd.module('Watd.Record').LocationWatcher = Polymer({
  is: 'watd-location-watcher'
  
  properties:
    position:
      type: Object
      readOnly: true
      notify: true
      reflectToAttribute: true
      value: ->
        latitude: 0
        longitude: 0
        speed: 0

   watch: ->
     @watch = navigator.geolocation.watchPosition(
         (position) => @_setPosition(position.coords),
         (error) -> console.log(error),
         {enableHighAccuracy: true, timeout: 5000, maximumAge: 0}
     )

   detached: ->
     if @watch?
       navigator.geolocation.clearWatch(@watch)
})