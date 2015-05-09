// Run like this:
// webpack-dev-server --config webpack.development.config.js --colors --progress --inline

var config  = require("./webpack.base.config");
var webpack = require("webpack");
var path    = require("path");

config.debug = true;
config.displayErrorDetails = true;

config.output = {
  path: "./assets/javascripts",
  filename: "[name]_webpack_bundle.js",
  publicPath: 'http://localhost:8080/assets/'
};

config.module.loaders.push(
  { test: /\.coffee$/, loaders: ["coffee"] }
);

config.plugins.push(
  new webpack.optimize.OccurenceOrderPlugin()
)

module.exports = config;
