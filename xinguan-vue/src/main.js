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
import {hasPermission} from './utils/permissionDirect'
const Plugins = [hasPermission]
Plugins.map((plugin) => {
    Vue.use(plugin)
})
Vue.use(ZkTable)
Vue.use(echarts)
NProgress.configure({ease: 'ease', speed: 500});
NProgress.configure({minimum: 0.3});
Vue.prototype.$http = axios


// axios.defaults.baseURL = 'https://www.zykhome.club/api/'
axios.defaults.baseURL = 'http://www.localhost:8081/'

//请求拦截器
axios.interceptors.request.use(config => {
        NProgress.start()
        config.headers.Authorization = LocalStorage.get(LOCAL_KEY_XINGUAN_ACCESS_TOKEN);
        return config;
    }
    , error => {
        return Promise.reject(error)
    });

//响应拦截器
axios.interceptors.response.use(
    function (response) {
        NProgress.done();
        const res = response.data;
        if (res.success) {
            return response;
        }

        if (res.data!=null&&res.data.errorCode === 50001) {
            LocalStorage.clearAll();
            return router.push("/login");
        }
        return response;
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
