React = require 'react/addons'

{ul, li} = React.DOM

ListItems = React.createClass

  propTypes:
    large: React.PropTypes.bool

  render: ->
    ul className: 'topcoat-list__container',
      if Array.isArray @props.children
        for child in @props.children
          @_listItem child
      else
        @_listItem @props.children

  _listItem: (child) ->
    li className: 'topcoat-list__item',
      child

module.exports = ListItems
