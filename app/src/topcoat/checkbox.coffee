React = require 'react/addons'

{label, input, div} = React.DOM

Checkbox = React.createClass

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

    label className: 'topcoat-checkbox',
      elements

  _input: ->
    @transferPropsTo input
      type: 'checkbox'

  _div: ->
    div className: 'topcoat-checkbox__checkmark'

module.exports = Checkbox
