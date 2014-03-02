React = require 'react/addons'
NavigationBarItem = require './navigationbaritem'

{div, h1} = React.DOM

NavigationBar = React.createClass

  propTypes:
    onTop: React.PropTypes.bool

  render: ->
    classSet = React.addons.classSet
      'topcoat-navigation-bar': true
      'on-top': @props.onTop
    div className: classSet,
      @props.children

module.exports = NavigationBar
