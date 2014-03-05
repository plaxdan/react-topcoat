
Button = require './button'
React = require 'react/addons'
button = null
buttonNode = null

describe 'Button', ->

  before ->
    @testUtils = React.addons.TestUtils

  it 'should have a props property', ->
    reactButton = Button()
    reactButton.should.have.ownProperty 'props'

  describe 'with variant cta', ->

    beforeEach ->
      button = Button variant: 'cta'
      @testUtils.renderIntoDocument button
      buttonNode = button.getDOMNode()

    it 'should have one class', ->
      buttonNode.classList?.length.should.equal 1

    it 'should have the correct class', ->
      buttonNode.classList[0].should.equal 'topcoat-button--cta'

  describe 'with variant quiet', ->

    beforeEach ->
      button = Button variant: 'quiet'
      @testUtils.renderIntoDocument button
      buttonNode = button.getDOMNode()

    it 'should have one class', ->
      buttonNode.classList?.length.should.equal 1

    it 'should have the correct class', ->
      buttonNode.classList[0].should.equal 'topcoat-button--quiet'

  describe 'when large', ->

    beforeEach ->
      button = Button large: true
      @testUtils.renderIntoDocument button
      buttonNode = button.getDOMNode()

    it 'should have one class', ->
      buttonNode.classList?.length.should.equal 1

    it 'should have the correct class', ->
      buttonNode.classList[0].should.equal 'topcoat-button--large'

    describe 'with variant cta', ->

      beforeEach ->
        button = Button large: true, variant: 'cta'
        @testUtils.renderIntoDocument button
        buttonNode = button.getDOMNode()

      it 'should have one class', ->
        buttonNode.classList?.length.should.equal 1

      it 'should have the correct class', ->
        buttonNode.classList[0].should.equal 'topcoat-button--large--cta'

    describe 'with variant quiet', ->

      beforeEach ->
        button = Button large: true, variant: 'quiet'
        @testUtils.renderIntoDocument button
        buttonNode = button.getDOMNode()

      it 'should have one class', ->
        buttonNode.classList?.length.should.equal 1

      it 'should have the correct class', ->
        buttonNode.classList[0].should.equal 'topcoat-button--large--quiet'

