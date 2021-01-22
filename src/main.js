
import Vue from 'vue'
import axios from 'axios'
import App from './App.vue'
import router from './router'
import '../public/reset.css'
import '../node_modules/bootstrap/dist/css/bootstrap.css'
import '../node_modules/font-awesome/css/font-awesome.min.css'
import $ from 'jquery'
import './views/js/bootstrap.min.js'
//import './views/js/bootstrap.js'
import moment from 'moment'
//引入cookies
// require
Vue.use(require('vue-cookies'))
import VueCookies from 'vue-cookies'
Vue.use(VueCookies)

Vue.prototype.$moment = moment
Vue.prototype.$axios = axios
Vue.config.productionTip = false

// $('#myModal').modal('hide')
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
