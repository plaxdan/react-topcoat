React = require 'react/addons'

{button} = React.DOM

Button = React.createClass

  propTypes:
    # TODO: cannot be both cta AND quiet
    cta: React.PropTypes.bool
    quiet: React.PropTypes.bool
    large: React.PropTypes.bool

  render: ->
    @transferPropsTo button
      className: "#{@_className()}",

      @props.children

  _className: ->
    className = 'topcoat-button'
    className = className.concat '--large' if @props.large
    className = className.concat '--cta' if @props.cta
    className = className.concat '--quiet' if @props.quiet
    className

module.exports = Button
