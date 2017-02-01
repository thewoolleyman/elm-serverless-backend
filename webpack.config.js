const webpack = require('webpack'); //to access built-in plugins
const path = require('path');

const config = {
  entry: './src/Main.elm',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'index.js'
  },
  module: {
    loaders: [{
      test: /\.elm$/,
      exclude: [/elm-stuff/, /node_modules/],
      loader: 'elm-webpack'
    }]
  }
};

module.exports = config
