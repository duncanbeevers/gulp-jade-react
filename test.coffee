plugin = require('./index')
gutil  = require('gulp-util')
chai   = require('chai')
expect = chai.expect

describe 'gulp-jade-react', ->
  it 'should render files', (cb) ->
    stream = plugin()
    buffer = []

    stream.on 'data', (file) ->
      buffer.push file

    stream.on 'end', ->
      output = buffer[0]
      expect(String(output.contents)).to.equal('function(){return React.DOM.p(null,"Moar");}')
      cb()

    stream.write new gutil.File
      base: __dirname
      path: __dirname + '/template.jade'
      contents: new Buffer('p Moar')

    stream.end()
