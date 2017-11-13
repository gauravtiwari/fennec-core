import React from 'react';
import PropTypes from 'prop-types';

const PageTitle = ({ title, icon }) => (
  <div>MyComponent</div>
);

PageTitle.propTypes = {
  title: PropTypes.string.isRequired,
  icon: PropTypes.string,
};

PageTitle.defaultProps = {
  icon: null,
};

export default PageTitle;
