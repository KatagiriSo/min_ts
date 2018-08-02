module.exports = {
  // or production
  mode: 'development',

  entry: {
    main:'./src/main.ts',
    menu:'./src/menu.ts'},

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
  // for import
  resolve: {
    extensions: [
      '.ts'
    ]
  }
};