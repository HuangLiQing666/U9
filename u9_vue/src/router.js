import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)
import Index from "./views/Index.vue"
import setting from "./views/setting.vue"
import Exam from "./components/index/Exam.vue"
import NotFound from "./views/NotFound.vue"
import userSetting from './components/setting/userSetting'
import upwdSetting from './components/setting/upwdSetting'

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/Exam",component:Exam},
    {path:"/setting",component:setting,children:[
      {path:"userSetting",component:userSetting},
      { path:"upwdSetting",component:upwdSetting}
    ]},
    {path:"*",component:NotFound},
  ]
})
