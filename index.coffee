render = require('jade-react')
through = require('through2')

gulpJadeReact = ->
  stream = through.obj (file, enc, callback) ->
    if file.isNull()
      @push(file)
      return callback()

    else if file.isBuffer()
      file.contents = new Buffer(render(file.contents))
      @push(file)
      return callback()

    else if file.isStream()
      throw new Error('Streams are not supported')
      return callback()

  return stream

module.exports = gulpJadeReact
