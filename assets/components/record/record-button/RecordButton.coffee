Watd.module('Watd.Record').RecordButton = Polymer({
  is: 'watd-record-button'
  
  properties:
    recording:
      type: Boolean
      value: false
      notify: true
      readOnly: true
      observer: 'recordingChanged'

  ready: ->
    @$.button.addEventListener('click', => @recordButtonClicked())

  recordButtonClicked: ->
    @_setRecording(!@recording)

  recordingChanged: (recording) ->
    if recording
      @$.button.innerHTML = 'Stop'
    else
      @$.button.innerHTML = 'Go'
})