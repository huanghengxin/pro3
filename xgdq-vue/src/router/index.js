import Vue from "vue";
import VueRouter from "vue-router";
import index from "../views/index.vue";
import search from "../views/search.vue";
import searchnull from "../views/searchnull.vue";
import login from "../views/login.vue";
import register from "../views/register.vue";
import classify from "../views/classify.vue";
import details from "../views/details.vue";
import center from "../views/center.vue";
import shopcar from "../views/shopcar.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    component: index,
  },
  {
    path: "/search",
    component: search,
  },
  {
    path: "/searchnull",
    component: searchnull,
  },
  {
    path: "/login",
    component: login,
  },
  {
    path: "/register",
    component: register,
  },
  {
    path: "/details/:fid",
    component: details,
  },
  {
    path: "/classify/:value",
    component: classify,
    //...........
    props: true,
  },
  {
    path: "/center",
    component: center,
  },
  {
    path: "/shopcar",
    component: shopcar,
  },
  {
    path: "/about",
    name: "About",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () =>
      import(/* webpackChunkName: "about" */ "../views/About.vue"),
  },
];

const router = new VueRouter({
  routes,
});

export default router;
