React = require 'react/addons'

{input} = React.DOM

Input = React.createClass

  propTypes:
    large: React.PropTypes.bool

  render: ->
    @transferPropsTo input
      type: 'text'
      className: "#{@_className()}"

  _className: ->
    className = 'topcoat-text-input'
    className = className.concat '--large' if @props.large
    className

module.exports = Input
