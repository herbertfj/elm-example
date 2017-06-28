import React from 'react'
import PropTypes from 'prop-types'

class ElmApp extends React.Component {
  shouldComponentUpdate() {
    return false
  }

  embed(node) {
    this.props.module.embed(node);
  }

  render() {
    return <div ref={(node) => this.embed(node)}/>
  }
}

ElmApp.propTypes = {
  module: PropTypes.shape({
    embed: PropTypes.func
  }).isRequired
}

export default ElmApp
