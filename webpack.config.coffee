HtmlWebpackPlugin = require 'html-webpack-plugin'

module.exports =
  plugins: [
    new HtmlWebpackPlugin
      filename: 'index.html'
      hash: true
  ]
  module:
    rules: [
      {
        test: /\.coffee$/
        use: 'coffee-loader'
      }
      {
        test: /\.elm$/
        exclude: [/elm-stuff/, /node_modules/]
        use: 'elm-webpack-loader'
      }
    ]
  entry: './src/index.coffee'
  output:
    filename: './dist/index.js'
  devServer:
    contentBase: ['./src/']