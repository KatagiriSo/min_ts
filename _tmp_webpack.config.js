var path = require('path');

module.exports = {
  // or production
  mode: 'development',

  entry: {
    main:'./src/main.ts'
  },

  module: {
    rules: [
      {
        test: /\.ts$/,
        use: 'ts-loader'
      },
      {
        test: /\.html$/,
        loader: 'html-loader'
      }
    ]
  },
  resolve: {
    modules: ['node_modules'],
    extensions: ['.ts', '.js', '.json', '.jsx']
  },
  output: {
    filename: '[name].bundle.js',
    path: path.resolve(__dirname, 'html/js/dist')
  }
};