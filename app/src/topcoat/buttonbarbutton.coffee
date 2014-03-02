React = require 'react/addons'

{button} = React.DOM

ButtonBarButton = React.createClass

  # TODO: set large at the parent ButtonBar
  propTypes:
    large: React.PropTypes.bool

  render: ->
    @transferPropsTo button
      className: "#{@_className()}",

      @props.children

  _className: ->
    className = 'topcoat-button-bar__button'
    className = className.concat '--large' if @props.large
    className

module.exports = ButtonBarButton
