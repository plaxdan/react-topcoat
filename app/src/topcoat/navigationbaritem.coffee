React = require 'react/addons'

{div, h4, h1} = React.DOM

NavigationBarItem = React.createClass

  propTypes:
    title: React.PropTypes.bool
    position: React.PropTypes.oneOf ['center', 'left', 'right']
    width: React.PropTypes.oneOf [
      'quarter'
      'third'
      'half'
      'full'
      'three-quarters'
      'two-thirds'
    ]

  getDefaultProps: ->
    title: false
    position: 'center'
    width: 'full'

  render: ->
      div className: "topcoat-navigation-bar__item #{@props.position} #{@props.width}",
        if @props.title
          h1 className: 'topcoat-navigation-bar__title',
            @props.children
        else
            @props.children

module.exports = NavigationBarItem
