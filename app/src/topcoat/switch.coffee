React = require 'react/addons'

{label, input, div} = React.DOM

Switch = React.createClass

  render: ->
   label className: 'topcoat-switch',
    @transferPropsTo input
      type: 'checkbox'
      className: 'topcoat-switch__input'
    div className: 'topcoat-switch__toggle'

module.exports = Switch
