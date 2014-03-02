
button = require './button'
describe 'Button', ->
  it 'TODO: change this to test the react component', ->
    (1 + 2).should.equal 3
  it 'should have a props property', ->
    reactButton = button()
    reactButton.should.have.ownProperty 'props'
