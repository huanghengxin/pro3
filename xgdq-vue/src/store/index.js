import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    islogin:sessionStorage.getItem("setislogin") || false,
    username:sessionStorage.getItem("username") || '',
  },
  //负责修改state中的变量,形参中的payload接受传进来的参数
  mutations: {
    // 改变用户登录状态
    setislogin(state){
      state.islogin=true
    },
    // 改变用户登录状态---退出,并且清除缓存
    logout(state){
      state.islogin=false;
      sessionStorage.removeItem("setislogin");
      sessionStorage.removeItem("username");
    },
    //接受登录成功时的用户名,并且改变
    getusername(state,payload){
      state.username=payload;
    }
  },
  actions: {
  },
  modules: {
  }
})
