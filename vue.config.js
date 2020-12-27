const webpack = require("webpack");

module.exports = {
  // devServer: { // 环境配置
  //   host: '0.0.0.0',
  //   public: '172.23.44.42:8080',
  //   port: '8080',
  //   https: false,
  //   disableHostCheck: true,
  //   open: false // 配置自动启动浏览器
  // },
  configureWebpack: {

    plugins: [

      new webpack.ProvidePlugin({

        $: 'jquery',

        jQuery: 'jquery',

        'window.jQuery': 'jquery',

        Popper: ['popper.js', 'default']

      })

    ]

  }

}