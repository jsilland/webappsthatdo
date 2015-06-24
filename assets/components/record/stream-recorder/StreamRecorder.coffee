Watd.module('Watd.Record').StreamRecorder = Polymer({
  is: 'watd-stream-recorder'
  
  properties:
    recording: Boolean
    currentSpeed: Number
    currentPosition:
      type: Object
      observer: 'positionUpdated'

  ready: ->
    latLngStream = []
    speedStream = []

  positionUpdated: (newPosition) ->
    if @recording
      @latLngStream.push([newPosition.latitude, newPosition.longitude])
      @speedStream.push(newPosition.speed)
})