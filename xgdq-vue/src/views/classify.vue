<template>
  <div>
    <search style="position: fixed;z-index: 9999;top:0;width:100%;"></search>
    <van-sidebar class="sidebar" v-model="activeKey">
      <van-sidebar-item :class="{red:red0}" title="桌面吸尘器" />
      <van-sidebar-item :class="{red:red1}" title="手持/推杆" />
      <van-sidebar-item :class="{red:red2}" title="除螨仪" />
      <van-sidebar-item :class="{red:red3}" title="卧式吸尘器" />
      <van-sidebar-item :class="{red:red4}" title="扫地机" />
      <van-sidebar-item :class="{red:red5}" title="桶式" />
      <van-sidebar-item :class="{red:red6}" title="配件" />
    </van-sidebar>
    <div class="classify" v-if="activeKey==0">
      <router-link :to="this.url0">
        <div v-for="(classify,index) of classifya" :key="index" class="classdetails">
          <img v-lazy="classify.src" alt />
          <div>{{classify.title}}</div>
          <div>￥{{classify.price.toFixed(2)}}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="activeKey==1">
      <router-link :to="this.url1">
        <div v-for="(classify,index) of classifyb" :key="index" class="classdetails">
          <img v-lazy="classify.src" alt />
          <div>{{classify.title}}</div>
          <div>￥{{classify.price.toFixed(2)}}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="activeKey==2">
      <router-link :to="this.url2">
        <div v-for="(classify,index) of classifyc" :key="index" class="classdetails">
          <img v-lazy="classify.src" alt />
          <div>{{classify.title}}</div>
          <div>￥{{classify.price.toFixed(2)}}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="activeKey==3">
      <router-link :to="this.url3">
        <div v-for="(classify,index) of classifyd" :key="index" class="classdetails">
          <img v-lazy="classify.src" alt />
          <div>{{classify.title}}</div>
          <div>￥{{classify.price.toFixed(2)}}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="activeKey==4">
      <router-link :to="this.url4">
        <div v-for="(classify,index) of classifye" :key="index" class="classdetails">
          <img v-lazy="classify.src" alt />
          <div>{{classify.title}}</div>
          <div>￥{{classify.price.toFixed(2)}}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="activeKey==5">
      <router-link :to="this.url5">
        <div v-for="(classify,index) of classifyf" :key="index" class="classdetails">
          <img v-lazy="classify.src" alt />
          <div>{{classify.title}}</div>
          <div>￥{{classify.price.toFixed(2)}}</div>
        </div>
      </router-link>
    </div>
    <div class="classify" v-else-if="activeKey==6">
      <router-link :to="this.url6">
        <div v-for="(classify,index) of classifyg" :key="index" class="classdetails">
          <img v-lazy="classify.src" alt />
          <div>{{classify.title}}</div>
          <div>￥{{classify.price.toFixed(2)}}</div>
        </div>
      </router-link>
    </div>
    <tabbar-more></tabbar-more>
  </div>
</template>

<script>
export default {
  //...................
  props: ["value"],
  data() {
    return {
      activeKey: 0,
      red0: true,
      red1: false,
      red2: false,
      red3: false,
      red4: false,
      red5: false,
      red6: false,
      classifya: [],
      classifyb: [],
      classifyc: [],
      classifyd: [],
      classifye: [],
      classifyf: [],
      classifyg: [],
      url0: "",
      url1: "",
      url2: "",
      url3: "",
      url4: "",
      url5: "",
      url6: "",
    };
  },
  mounted() {
    //声明变量保存地址栏参数
    let fid = this.$route.params.value;
    //左侧导航栏=地址栏参数
    this.activeKey = fid;
    this.axios.get("/classifya").then((res) => {
      this.classifya = res.data.result;
      this.url0 = "/details/" + this.classifya[0].family_id;
    });
    this.axios.get("/classifyb").then((res) => {
      this.classifyb = res.data.result;
      this.url1 = "/details/" + this.classifyb[0].family_id;
    });
    this.axios.get("/classifyc").then((res) => {
      this.classifyc = res.data.result;
      this.url2 = "/details/" + this.classifyc[0].family_id;
    });
    this.axios.get("/classifyd").then((res) => {
      this.classifyd = res.data.result;
      this.url3 = "/details/" + this.classifyd[0].family_id;
    });
    this.axios.get("/classifye").then((res) => {
      this.classifye = res.data.result;
      this.url4 = "/details/" + this.classifye[0].family_id;
    });
    this.axios.get("/classifyf").then((res) => {
      this.classifyf = res.data.result;
      this.url5 = "/details/" + this.classifyf[0].family_id;
    });
    this.axios.get("/classifyg").then((res) => {
      this.classifyg = res.data.result;
      this.url6 = "/details/" + this.classifyg[0].family_id;
    });
  },
  watch: {
    activeKey() {
      if (this.activeKey == 0) {
        this.red0 = true;
        this.red1 = false;
        this.red2 = false;
        this.red3 = false;
        this.red4 = false;
        this.red5 = false;
        this.red6 = false;
      } else if (this.activeKey == 1) {
        this.red0 = false;
        this.red1 = true;
        this.red2 = false;
        this.red3 = false;
        this.red4 = false;
        this.red5 = false;
        this.red6 = false;
      } else if (this.activeKey == 2) {
        this.red0 = false;
        this.red1 = false;
        this.red2 = true;
        this.red3 = false;
        this.red4 = false;
        this.red5 = false;
        this.red6 = false;
      } else if (this.activeKey == 3) {
        this.red0 = false;
        this.red1 = false;
        this.red2 = false;
        this.red3 = true;
        this.red4 = false;
        this.red5 = false;
        this.red6 = false;
      } else if (this.activeKey == 4) {
        this.red0 = false;
        this.red1 = false;
        this.red2 = false;
        this.red3 = false;
        this.red4 = true;
        this.red5 = false;
        this.red6 = false;
      } else if (this.activeKey == 5) {
        this.red0 = false;
        this.red1 = false;
        this.red2 = false;
        this.red3 = false;
        this.red4 = false;
        this.red5 = true;
        this.red6 = false;
      } else if (this.activeKey == 6) {
        this.red0 = false;
        this.red1 = false;
        this.red2 = false;
        this.red3 = false;
        this.red4 = false;
        this.red5 = false;
        this.red6 = true;
      }
    },
  },
};
</script>

<style scoped>
.red {
  color: red;
}
.classdetails > div:nth-child(3) {
  color: #ec232b;
  font-weight: bold;
  margin: 10px 0 10px 10px;
}
.classdetails > div:nth-child(2) {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 12px;
  color: #666666;
  margin-left: 10px;
}
.classdetails img {
  width: 125.5px;
  height: 125.5px;
}
.classdetails {
  width: 125.5px;
  font-size: 14px;
  float: left;
  margin-left: 10px;
}
.classify {
  margin-bottom: 50px;
  background-color: #fff;
  position: absolute;
  top: 54px;
  left: 95px;
}
.sidebar {
  width: 95px;
  height: 100%;
  padding-top: 74px;
  position: fixed;
  background-color: #f7f8fa;
}
</style>