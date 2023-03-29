module.exports = {
	entry: path.resolve(__dirname, 'src') + '/client/index.js',
	module: {
		rules: [
			{
				test: /\.js$/,
				use: {
					loader: '@sucrase/webpack-loader',
					options: {
						transforms: ['jsx']
					}
				}
			}
		]
	}
};
