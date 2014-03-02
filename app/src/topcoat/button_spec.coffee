
button = require './button'
describe 'Button', ->
  it 'should have a props property', ->
    reactButton = button()
    reactButton.should.have.ownProperty 'props'
