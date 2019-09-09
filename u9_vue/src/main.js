import Vue from 'vue'
import App from './App.vue'
import router from './router'
import MyHeader from './components/MyHeader.vue'
import MyFooter from './components/MyFooter.vue'
import axios from 'axios'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';
import Vuex from "vuex"

axios.defaults.baseURL="http://localhost:3020/"
axios.defaults.withCredentials=true
Vue.prototype.axios=axios
Vue.component("my-header",MyHeader);
Vue.component("my-footer",MyFooter);
Vue.config.productionTip = false;
Vue.use(ElementUI);

Vue.use(Vuex);
var store=new Vuex.Store({
  state:{
    uid:0,
    uname:''
  },
  mutations:{
    setUid(state,uid){
      state.uid=uid;
    }
  },
  getters:{
    getUid(state){
      return state.uid;
    }
  },
  actions:{

  }
});

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
