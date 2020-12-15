import Vue from 'vue'
import App from './App.vue'
import router from './router/index'
import store from './store'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import NProgress from 'nprogress'
import 'nprogress/nprogress.css'
import axios from 'axios'
import echarts from 'echarts'
import ZkTable from 'vue-table-with-tree-grid'
import { hasPermission } from './utils/permissionDirect'

const Plugins = [ hasPermission ]
Plugins.map((plugin) => {
  Vue.use(plugin)
})

Vue.use(ZkTable)
Vue.use(echarts)

NProgress.configure({ ease: 'ease', speed: 500 });
NProgress.configure({ minimum: 0.3 });
Vue.prototype.$http = axios


// axios.defaults.baseURL = 'https://www.zykhome.club/api/'
axios.defaults.baseURL = 'http://www.localhost:8081/'

/**
 *  axios请求拦截器
 */
axios.interceptors.request.use(config => {
  NProgress.start()
  config.headers.Authorization = window.localStorage.getItem('JWT_TOKEN');
  return config;
}
  , error => {
    return Promise.reject(error)
  });


/**
 * axios响应拦截器
 */
axios.interceptors.response.use(
  function (response) {
    NProgress.done() // 设置加载进度条(结束..)
    if (response.data.code === 4001) {//如果返回的code==4001说明token错误或者token过期
      window.localStorage.clear();
      return router.push("/login");
    }else {
        return response;
    }
  },
  function (error) {
    return Promise.reject(error)
  }
)
/**
 * 自定义权限指令
 */

Vue.config.productionTip = false
Vue.use(ElementUI)
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
