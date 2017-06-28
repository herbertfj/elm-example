const path = require('path')
const HtmlWebpackPlugin = require('html-webpack-plugin')

module.exports = {
  entry: path.resolve('js', 'index.js'),

  output: {
    path: path.resolve('dist'),
    filename: '[name][hash].js'
  },

  plugins: [
    new HtmlWebpackPlugin({
      template: path.resolve('js', 'index.html'),
      inject: 'body'
    })
  ],

  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: [
          {
            loader: 'elm-webpack-loader',
            options: {
              verbose: true,
              warn: true
            }
          }
        ]
      }
    ],

    noParse: /\.elm$/
  }
}
