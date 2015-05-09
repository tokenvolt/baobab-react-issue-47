// Common webpack configuration used by other webpack configurations

var path    = require("path");
var webpack = require('webpack');

module.exports = {
  context: __dirname,
  entry: {
    main: [
      "./assets/javascripts/app"
    ],
  },

  resolve: {
    root: [
            path.join(__dirname, "./assets/javascripts")
          ],
    extensions: [
      "",
      ".webpack.js",
      ".web.js",
      ".js",
      ".coffee",
      "config.js"
    ]
  },

  module: {
    loaders: []
  },

  plugins: [
    new webpack.NoErrorsPlugin()
  ]
};
