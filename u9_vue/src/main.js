import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MyHeader from './components/MyHeader.vue'
import MyFooter from './components/MyFooter.vue'
import axios from 'axios'

axios.defaults.baseURL="http://localhost:3020/"
axios.defaults.withCredentials=true
Vue.prototype.axios=axios
Vue.component("my-header",MyHeader);
Vue.component("my-footer",MyFooter);
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
