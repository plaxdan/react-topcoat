chai = require 'chai'
sinonChai = require 'sinon-chai'

# enable 'should' assertion syntax
# TODO: configure this in gulpfile
expect = chai.expect
chai.use sinonChai
chai.should()


React = require 'react/addons'

describe 'Test environment', ->

  before ->
    @testUtils = React.addons.TestUtils

  it 'should run a basic test', ->
    (1 + 2).should.equal 3

  it 'should have access to React', ->
    React.should.not.be.null

  it 'should have access to React.addons.TestUtils', ->
    @testUtils.should.not.be.null

describe 'ReactTopcoat module', ->
  ReactTopcoat = require './index'

  it 'should export as ReactTopcoat', ->
    ReactTopcoat.should.not.be.null

  it 'should export all the components', ->
    ReactTopcoat.Button.should.not.be.null
    ReactTopcoat.ButtonBar.should.not.be.null
    ReactTopcoat.ButtonBarButton.should.not.be.null
    ReactTopcoat.Checkbox.should.not.be.null
    ReactTopcoat.Input.should.not.be.null
    ReactTopcoat.List.should.not.be.null
    ReactTopcoat.ListHeader.should.not.be.null
    ReactTopcoat.ListItems.should.not.be.null
    ReactTopcoat.NavigationBar.should.not.be.null
    ReactTopcoat.NavigationBarItem.should.not.be.null
    ReactTopcoat.Notification.should.not.be.null
    ReactTopcoat.RadioButton.should.not.be.null
    ReactTopcoat.Range.should.not.be.null
    ReactTopcoat.SearchInput.should.not.be.null
    ReactTopcoat.Switch.should.not.be.null
    ReactTopcoat.Tab.should.not.be.null
    ReactTopcoat.TabBar.should.not.be.null
    ReactTopcoat.TextArea.should.not.be.null

# TODO: do this dynamically
require './topcoat/button_spec'
