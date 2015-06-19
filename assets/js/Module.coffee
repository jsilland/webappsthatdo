root = window
root.Watd ||= {}

Watd.module = (pkg) ->
  packageMembers = pkg.split('.')
  level = root
  packageMembers.forEach((value, index) ->
    level[value] = level[value] ? { }
    level = level[value]
  )
  level
