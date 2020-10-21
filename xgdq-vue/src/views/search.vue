<template>
  <div>
    <router-link to>
      <van-image
        class="dog"
        width="40"
        height="20"
        src="https://www.xgdq.com/wap_themes/xgdq3/images/w_img/shouye_logo@2x.png"
      />
    </router-link>
    <van-search
      class="search"
      placeholder="搜索商品..."
      shape="round"
      v-model="value"
      @keydown.13="search"
    />
    <div class="cancel">
      <span v-show="searchtext" @click="search">搜索</span>
      <router-link to="/">
        <span v-show="cancel">取消</span>
      </router-link>
    </div>
    <div class="guanjianci">
      <p>关键词:</p>
      <span>桌面吸尘器</span>
      <span>手持推杆</span>
      <span>除螨仪</span>
      <span>卧式吸尘器</span>
      <span>扫地机</span>
      <span>桶式</span>
      <span>配件</span>
    </div>
    <div class="hotsearch">热门搜索</div>
    <div>
      <router-link :to="`/details/1`">
        <van-button round class="btn">T10 Plus</van-button>
      </router-link>
      <router-link :to="`/details/5`">
        <van-button round class="btn">R55 Pro</van-button>
      </router-link>
      <router-link :to="`/details/2`">
        <van-button round class="btn">D-620 Alr</van-button>
      </router-link>
      <router-link :to="`/details/1`">
        <van-button round class="btn">T10</van-button>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value: "",
      cancel: true,
      searchtext: false,
      searchproduct: [],
    };
  },
  methods: {
    search() {
      if (this.value.trim() !== "") {
        //地址栏参数=input框中的值
        this.$route.params.value = this.value;
        this.axios.get("/search?value=" + this.value).then((res) => {
          this.searchproduct = res.data.result;
          if (this.searchproduct.length > 0) {
            //声明变量=数据库中拿到的数据的family_id
            let fid = res.data.result[0].family_id;
            //重新赋值
            this.value = fid;
            this.$router.push("/classify/" + this.value);
          } else {
            this.$router.push("/searchnull");
          }
        });
      }
    },
  },
  watch: {
    value() {
      if (this.value == "") {
        this.cancel = true;
        this.searchtext = false;
      } else if (this.value !== "") {
        this.cancel = false;
        this.searchtext = true;
      }
    },
  },
};
</script>

<style scoped>
.guanjianci span {
  margin-right: 30px;
  color: #ff594e;
}
.guanjianci {
  margin-left: 15px;
  margin-bottom: 20px;
  font-size: 14px;
}
.btn {
  border: 1px solid #ddd;
  margin-left: 20px;
  margin-bottom: 10px;
  font-size: 14px;
  height: 33px;
}
.hotsearch {
  margin: 0 15px 20px;
  font-size: 14px;
}
.cancel {
  width: 30px;
  height: 16px;
  font-size: 14px;
  color: #000;
  position: absolute;
  right: 10px;
  top: 15px;
}
.cancel span {
  color: #000;
}
.cancel > span:nth-child(2) {
  position: absolute;
  left: 0;
}
.search {
  display: inline-block;
  width: 260px !important;
}
.dog {
  margin: 0 15px;
}
</style>