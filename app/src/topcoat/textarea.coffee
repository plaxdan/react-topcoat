React = require 'react/addons'

{textarea} = React.DOM

TextArea = React.createClass

  propTypes:
    value: React.PropTypes.string
    large: React.PropTypes.bool

  getDefaultProps: ->
    rows: '6'

  render: ->
    @transferPropsTo textarea
      type: 'text'
      rows: @props.rows
      className: "#{@_className()}",

  _className: ->
    className = 'topcoat-textarea'
    className = className.concat '--large' if @props.large
    className

module.exports = TextArea
