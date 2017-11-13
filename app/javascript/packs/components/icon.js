import React from 'react';
import PropTypes from 'prop-types';

/**
 * Icon - draw fontawesome icon
 * @param {string} icon name of the icon from fontawesome library
 */

const Icon = ({ icon }) => (
  <i className={`fa fa-${icon}`} aria-hidden="true" />
);

Icon.propTypes = {
  icon: PropTypes.string.isRequired,
};

export default Icon;
