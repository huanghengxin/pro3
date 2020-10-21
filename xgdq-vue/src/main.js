import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import VueLazyload from "vue-lazyload";
Vue.use(VueLazyload);

import MintUI from "mint-ui";
import "mint-ui/lib/style.min.css";
Vue.use(MintUI);
//底部导航栏
// import { Tabbar, TabItem } from "mint-ui";
// Vue.component(Tabbar.name, Tabbar);
// Vue.component(TabItem.name, TabItem);

import Vant from "vant";
import "vant/lib/index.css";
Vue.use(Vant);
// //弹出框
// import { Dialog } from "vant";
// Vue.use(Dialog);
// import { Search } from "vant";
// Vue.use(Search);
// import { Image as VanImage } from "vant";
// Vue.use(VanImage);
// import { Button } from "vant";
// Vue.use(Button);
// import { Swipe, SwipeItem } from "vant";
// Vue.use(Swipe);
// Vue.use(SwipeItem);
// //通知栏
// import { NoticeBar } from "vant";
// Vue.use(NoticeBar);
// //输入框
// import { Field } from "vant";
// Vue.use(Field);
// //遮罩层---阴影
// import { Overlay } from "vant";
// Vue.use(Overlay);
// //侧边导航
// import { Sidebar, SidebarItem } from "vant";
// Vue.use(Sidebar);
// Vue.use(SidebarItem);

//全局组件
import search from "./components/search.vue";
Vue.component("search", search);
import carousel from "./components/carousel.vue";
Vue.component("carousel", carousel);
import index_details1 from "./components/index_details1.vue";
Vue.component("index-details1", index_details1);
import index_details2 from "./components/index_details2.vue";
Vue.component("index-details2", index_details2);
import index_details3 from "./components/index_details3.vue";
Vue.component("index-details3", index_details3);
import index_details4 from "./components/index_details4.vue";
Vue.component("index-details4", index_details4);
import index_details5 from "./components/index_details5.vue";
Vue.component("index-details5", index_details5);
import tabbar from "./components/tabbar.vue";
Vue.component("tabbar", tabbar);
import tabbar_more from "./components/tabbar_more.vue";
Vue.component("tabbar-more", tabbar_more);
import tabbar_shopcar from "./components/tabbar_shopcar.vue";
Vue.component("tabbar-shopcar", tabbar_shopcar);
import more from "./components/more.vue";
Vue.component("more", more);

import axios from "axios";
axios.defaults.baseURL = "http://127.0.0.1:3997";
Vue.prototype.axios = axios;

Vue.config.productionTip = false;

new Vue({
  router,
  store,
  render: (h) => h(App),
}).$mount("#app");
