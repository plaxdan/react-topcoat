React = require 'react/addons'

{input} = React.DOM

Range = React.createClass

  render: ->
    @transferPropsTo input
      type: 'range'
      className: 'topcoat-range'

module.exports = Range
