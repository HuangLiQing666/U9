import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)
import Index from "./views/Index.vue"
import Exam from "./components/index/Exam.vue"
import NotFound from "./views/NotFound.vue"

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/Exam",component:Exam},
    {path:"*",component:NotFound},
  ]
})
