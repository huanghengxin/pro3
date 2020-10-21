<template>
  <div>
    <mt-tabbar v-model="tab">
      <mt-tab-item id="home">
        <img slot="icon" src="../assets/tabbar/home_hui.png" v-if="tab!=='home'" />
        <img slot="icon" v-lazy="home" v-else-if="tab=='home'" @click="backtop()" />
        <span>{{top}}</span>
      </mt-tab-item>
      <mt-tab-item id="more">
        <img slot="icon" src="../assets/tabbar/more_hui.png" v-if="tab!=='more'" />
        <img slot="icon" src="../assets/tabbar/more_red.png" v-else />
        <span>分类</span>
      </mt-tab-item>

      <mt-tab-item id="kefu">
        <img slot="icon" src="../assets/tabbar/kefu_hui.png" v-if="tab!=='kefu'" />
        <img slot="icon" src="../assets/tabbar/kefu_red.png" v-else />
        <span>客服</span>
      </mt-tab-item>

      <mt-tab-item id="bao">
        <img slot="icon" src="../assets/tabbar/bao_hui.png" v-if="tab!=='bao'" />
        <img slot="icon" src="../assets/tabbar/bao_red.png" v-else />
        <span>购物车</span>
      </mt-tab-item>

      <mt-tab-item id="my">
        <img slot="icon" src="../assets/tabbar/my_hui.png" v-if="tab!=='my'" />
        <img slot="icon" src="../assets/tabbar/my_red.png" v-else />
        <span>我的</span>
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
export default {
  data() {
    return {
      tab: "more",
      top: "首页",
      home: require("../assets/tabbar/home_red.png"),
    };
  },
  watch: {
    tab() {
      if (this.tab == "home") {
        this.$router.push("/");
      } else if (this.tab == "more") {
        this.$router.push("/classify");
      } else if (this.tab == "kefu") {
        this.$router.push("/login");
      } else if (this.tab == "bao") {
        this.$router.push("/shopcar");
      } else if (this.tab == "my") {
        this.$router.push("/login");
      }
    },
  },
  mounted() {
    window.addEventListener("scroll", this.scrollToTop);
  },
  destroyed() {
    window.removeEventListener("scroll", this.scrollToTop);
  },
  methods: {
    backtop() {
      const that = this;
      let timer = setInterval(() => {
        let ispeed = Math.floor(-that.scrollTop / 5);
        document.documentElement.scrollTop = document.body.scrollTop =
          that.scrollTop + ispeed;
        if (that.scrollTop === 0) {
          clearInterval(timer);
        }
      }, 16);
    },
    scrollToTop() {
      const that = this;
      let scrollTop =
        window.pageYOffset ||
        document.documentElement.scrollTop ||
        document.body.scrollTop;
      that.scrollTop = scrollTop;
      if (that.scrollTop > 600) {
        that.home = require("../assets/tabbar/top_red.png");
        that.top = "返回顶部";
      } else {
        that.home = require("../assets/tabbar/home_red.png");
        that.top = "首页";
      }
    },
  },
};
</script>

<style scoped>
.top {
  margin: 0;
}
.mint-tabbar > .mint-tab-item.is-selected {
  color: #ec232b;
}
.mint-tab-item {
  color: #9fa3a6;
}
.mint-tabbar {
  height: 50px;
  position: fixed;
}
</style>