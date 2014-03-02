React = require 'react/addons'

{span} = React.DOM

Notification = React.createClass

  render: ->
    span className: 'topcoat-notification',
      @props.children

module.exports = Notification
