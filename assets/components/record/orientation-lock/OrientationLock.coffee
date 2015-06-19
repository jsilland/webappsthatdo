Watd.module('Watd.Record').OrientationLock = Polymer({
  is: 'watd-orientation-lock'
	
	properties:
		orientation: String

	ready: ->
    if screen.orientation && screen.orientation.lock
      screen.orientation.lock(@orientation)
})