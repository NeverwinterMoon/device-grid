path = require 'path'
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
    path: path.resolve(__dirname + '/dist')
    filename: 'index.js'
  devServer:
    contentBase: ['./src/']
