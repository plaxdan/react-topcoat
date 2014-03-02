React = require 'react/addons'

{div, h3, ul, li} = React.DOM

List = React.createClass

  propTypes:
    large: React.PropTypes.bool

  render: ->
    newList = true
    div className: 'topcoat-list',
      child for child in @props.children

module.exports = List
