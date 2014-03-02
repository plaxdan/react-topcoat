React = require 'react/addons'

{div} = React.DOM

TabBar = React.createClass

  render: ->
    div className: 'topcoat-tab-bar',
      @props.children

module.exports = TabBar
