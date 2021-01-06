import Vue from 'vue'
import VueRouter from 'vue-router'
import loginRegister from '../views/loginRegister.vue'
import test from '../views/test.vue'
import admin from '../views/admin.vue'
import home from '../views/home.vue'
import practice from '../views/practice.vue'
Vue.use(VueRouter)

const routes = [
  {
	  path:'/',
	  name:'login',
	  component: loginRegister
  },{
    path:'/src/views/test.vue',
    name:'test',
    component: test
  },{
    path:'/src/views/admin.vue',
    name:'admin',
    component:admin
  },{
    path:'/src/views/home.vue',
    name:'home',
    component:home
  },{
    path:'/src/views/practice.vue',
    name:'practice',
    component:practice
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
