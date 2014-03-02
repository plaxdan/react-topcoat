React = require 'react/addons'
ButtonBarButton = require './buttonbarbutton'

{div} = React.DOM

ButtonBar = React.createClass

  render: ->
    div className: 'topcoat-button-bar',
      # @props.children may or may not be an Array
      #   see: http://facebook.github.io/react/tips/children-props-type.html
      if Array.isArray @props.children
        for child, index in @props.children
          div key: index, className: 'topcoat-button-bar__item',
            child
      else
        div className: 'topcoat-button-bar__item',
          child

module.exports = ButtonBar
