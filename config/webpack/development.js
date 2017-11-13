const environment = require('./environment');
const merge = require('webpack-merge');
const path = require('path');

/*
module.exports = environment.toWebpackConfig();
*/

module.exports = {
	entry: './app/javascript/packs/hello_react.jsx',
    output: {
      filename: 'bundle.js',
      path: path.resolve(__dirname, 'dist')
    },
		module: {
    loaders: [
      {
        test: /.scss$/,
        loaders: ["style", "css", "sass"],
        include: path.resolve(__dirname, '../')
      },
	  {
        test: /\.css$/,
        loaders: [ 'style-loader', 'css-loader' ]
      },
	  {
		test: /\.(eot|woff|woff2|ttf|svg|png|jpg)(\?.*$|$)/,
	    loader: 'url-loader?limit=100000'
	  }
    ]
  }
};
