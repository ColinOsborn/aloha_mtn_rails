import React from "react"
import PropTypes from "prop-types"

class Bike extends React.Component {
  render () {
    return (
      <React.Fragment>
        Name: {this.props.name}
        Image: {this.props.image}
        Demo: {this.props.demo}
        Rental: {this.props.rental}
      </React.Fragment>
    );
  }
}

Bike.propTypes = {
  name: PropTypes.string,
  demo: PropTypes.bool,
  rental: PropTypes.bool,
  image: PropTypes.node
};

export default Bike
