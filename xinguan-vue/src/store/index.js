import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

const store= new Vuex.Store({
  state: {
    userInfo:JSON.parse(localStorage.getItem("userInfo")) || {},
  },
  mutations:{
    setUserInfo(state,userInfo){
      localStorage.setItem('userInfo', JSON.stringify(userInfo));//将传递的数据先保存到localStorage中
      state.userInfo = userInfo;// 之后才是修改state中的状态
    }
  },
  actions:{},
  modules:{},
})
export default store
