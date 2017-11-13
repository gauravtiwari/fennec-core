const path = require('path');

module.exports = {
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
    	// loader: 'url-loader?limit=30000&name=[name]-[hash].[ext]'
	    loader: 'url-loader?limit=100000'
	  }
    ]
  }
}