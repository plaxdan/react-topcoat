React = require 'react/addons'

{label, input, button} = React.DOM

Tab = React.createClass

  render: ->
    label className: 'topcoat-tab-bar__item',
      @transferPropsTo input
        type: 'radio'
        name: 'tab-bar'
       button className: 'topcoat-tab-bar__button',
        @props.children

module.exports = Tab
