var List,React,div,h3,li,ul,_ref;React=require("react/addons"),_ref=React.DOM,div=_ref.div,h3=_ref.h3,ul=_ref.ul,li=_ref.li,List=React.createClass({propTypes:{large:React.PropTypes.bool},render:function(){var e,r;return r=!0,div({className:"topcoat-list"},function(){var r,t,a,i;for(a=this.props.children,i=[],r=0,t=a.length;t>r;r++)e=a[r],i.push(e);return i}.call(this))}}),module.exports=List;