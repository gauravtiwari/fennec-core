const environment = require('./environment');
// const merge = require('webpack-merge');
// const path = require('path');

module.exports = environment.toWebpackConfig();

