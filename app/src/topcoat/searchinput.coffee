React = require 'react/addons'

{input} = React.DOM

SearchInput = React.createClass

  propTypes:
    large: React.PropTypes.bool

  render: ->
    input
      type: 'search'
      className: "#{@_className()}"
      placeholder: @props.placeholder? or 'search'

  _className: ->
    className = 'topcoat-search-input'
    className = className.concat '--large' if @props.large
    className

module.exports = SearchInput
