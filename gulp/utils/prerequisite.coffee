which = require('which')

execList = ['lftp','rsync']

exports.check = (cb) ->

  errors = []

  for exe in execList

    try
      which.sync(exe)
    catch e
      result = e.toString()
      if result.indexOf('Error') > -1
        errors.push result

  if errors.length >0
    cb(errors)
  else
    cb()