React = require 'react/addons'

{h3} = React.DOM

ListHeader = React.createClass

  componentName: 'ListHeader'

  render: ->
    h3 className: 'topcoat-list__header',
      @props.children

module.exports = ListHeader
