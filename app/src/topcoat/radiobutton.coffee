React = require 'react/addons'

{label, input, div} = React.DOM

RadioButton = React.createClass

  propTypes:
    labelPosition: React.PropTypes.oneOf [
      'left'
      'right'
    ]

  getDefaultProps: ->
    labelPosition: 'right'

  render: ->
    elements = [@_input(), @_div()]
    switch @props.labelPosition
      when 'left' then elements.unshift @props.children
      when 'right' then elements.push @props.children

    label className: 'topcoat-radio-button',
      elements

  _input: ->
    @transferPropsTo input
      type: 'radio'

  _div: ->
    div className: 'topcoat-radio-button__checkmark'

module.exports = RadioButton
