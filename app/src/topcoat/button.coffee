React = require 'react/addons'

{button} = React.DOM

Button = React.createClass

  propTypes:
    variant: React.PropTypes.oneOf ['cta', 'quiet']
    large: React.PropTypes.bool

  render: ->
    @transferPropsTo button
      className: "#{@_className()}",

      @props.children

  _className: ->
    className = 'topcoat-button'
    className = className.concat '--large' if @props.large
    className = className.concat "--#{@props.variant}" if @props.variant?
    className

module.exports = Button
