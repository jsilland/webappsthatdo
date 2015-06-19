Watd.module('Watd.Record').SpeedLabel = Polymer({
  is: 'watd-speed-label'
  
  properties:
    speed:
      type: Number
      value: 0
      
  formatSpeed: (value) ->
    if value?
      (value * 3.6).toFixed(1)
    else
      '—'
})