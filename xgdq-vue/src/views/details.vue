<template>
  <div style="background-color: #f4f4f4">
    <div class="floor1">
      <div class="navbar">
        <router-link to="/classify/0">
          <img
            class="back"
            src="https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/fanhui@2x.png"
            alt
          />
        </router-link>
        <img class="collect" v-lazy="love" alt @click="changelove" />
      </div>
      <van-swipe class="my-swipe" indicator-color="#f4f4f4">
        <van-swipe-item>
          <img v-lazy="details.lunbo1" alt />
        </van-swipe-item>
        <van-swipe-item>
          <img v-lazy="details.lunbo2" alt />
        </van-swipe-item>
        <van-swipe-item>
          <img v-lazy="details.lunbo3" alt />
        </van-swipe-item>
      </van-swipe>
      <div class="title">
        <p>{{ details.title1 }}</p>
        <p>{{ details.title2 }}</p>
      </div>
      <div class="price">
        <span>¥{{ details.price }}</span>
        <!-- 整改-发送请求 -->
        <div class="select">
          <button @click="jian">-</button>
          <input type="text" v-model="num" />
          <button @click="jia">+</button>
        </div>
        <span>总销量:{{ details.sales }}</span>
      </div>
    </div>
    <div class="floor2">
      <div class="huabei">
        <span>花呗分期</span>
        <span>(免手续费)</span>
      </div>
      <div class="fenqi">
        <span>
          <div>￥999.67×3期</div>
          <div class="shouxu">手续费￥0/期</div>
        </span>
        <span>
          <div>￥499.83×6期</div>
          <div class="shouxu">手续费￥0/期</div>
        </span>
        <span>
          <div>￥249.92×12期</div>
          <div class="shouxu">手续费￥0/期</div>
        </span>
      </div>
    </div>
    <div class="floor3">
      <div class="review">
        <span>商品评价</span>
        <span>></span>
      </div>
      <div class="person">
        <img
          src="https://www.xgdq.com/public/images/65/6b/be/1a1ebd4d46fa1c49e2edf46c0017669c6e150419.png"
        />
      </div>
    </div>
    <div>
      <mt-tabbar class="tabbar">
        <div class="left">
          <ul>
            <router-link to="/">
              <li>
                <img
                  src="https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/xiangqingye_shouye@2x.png"
                  alt
                />
                <p>首页</p>
              </li>
            </router-link>
            <router-link to="/login">
              <li>
                <img
                  src="https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/xiangqingye_kefu@2x.png"
                  alt
                />
                <p>客服</p>
              </li>
            </router-link>
            <router-link to="/shopcar">
              <li>
                <img
                  src="https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/pingjia_gouwuche@2x.png"
                  alt
                />
                <p>购物车</p>
                <!-- 整改-用vuex?????????? -->
                <span class="cart" v-show="showcart">{{ cartnumber }}</span>
              </li>
            </router-link>
          </ul>
        </div>
        <div class="right">
          <button @click="join">加入购物车</button>
          <button>立即购买</button>
        </div>
      </mt-tabbar>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      love:
        "https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/shoucahng%20@2x.png",
      //整改
      num: 1,
      //整改
      cartnumber: "",
      showcart: false,
      details: [],
    };
  },
  methods: {
    changelove() {
      if (
        this.love ==
        "https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/shoucahng%20@2x.png"
      ) {
        this.love =
          "https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/yishoucang@2x.png";
      } else {
        this.love =
          "https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/shoucahng%20@2x.png";
      }
    },
    //整改--发送请求
    jia() {
      this.num++;
    },
    //整改--发送请求
    jian() {
      if (this.num > 1) {
        this.num--;
      }
    },
    join() {
      this.axios
        .get("/addcart", {
          params: {
            id: this.details.id,
            img: this.details.lunbo1,
            title: this.details.title1,
            price: this.details.price,
            count: 1,
            checked: 1,
          },
        })
        .then((res) => {
          // alert("添加成功");
          this.$dialog.alert({
            title: "提示信息",
            message: "加入购物车成功",
          });
          this.axios.get("/cart").then((res) => {
            this.cartnumber = res.data.length;
          });
          if (this.showcart == false) {
            this.showcart = true;
          }
        });
    },
  },
  mounted() {
    let fid = this.$route.params.fid;
    this.axios.get("/details?fid=" + fid).then((res) => {
      this.details = res.data.result;
      let price = this.details.price.toFixed(2);
      this.details.price = price;
    });
    this.axios.get("/cart").then((res) => {
      if (res.data.length == 0) {
        this.showcart = false;
      } else {
        this.showcart = true;
        this.cartnumber = res.data.length;
      }
    });
  },
};
</script>

<style scoped>
.right > button:nth-child(2) {
  width: 100px;
  height: 38px;
  background: #ec1c23;
  border-radius: 0px 19px 19px 0px;
  font-size: 14px;
  border: 0;
  color: #fff;
}
.right > button:nth-child(1) {
  width: 100px;
  height: 38px;
  background: #fe9436;
  border-radius: 19px 0px 0px 19px;
  font-size: 14px;
  border: 0;
  color: #fff;
  margin-left: 5px;
  margin-top: 10px;
}
.cart {
  width: 14px;
  height: 14px;
  text-align: center;
  line-height: 14px;
  border-radius: 50%;
  font-size: 10px;
  color: #fff;
  position: absolute;
  left: 140px;
  top: 5px;
  background: #ec1c23;
}
.left img {
  width: 18px;
  height: 18px;
}
.left ul {
  width: 140px;
  font-size: 12px;
  margin-top: 10px;
  margin-left: 15px;
  display: flex;
  justify-content: space-between;
}
.left p {
  margin: 0;
  padding: 0;
  color: #999;
}
.person > img {
  width: 35px;
  height: 35px;
}
.person {
  margin-top: 20px;
}
.tabbar {
  height: 56px;
  position: fixed;
}
.review {
  display: flex;
  justify-content: space-between;
}
.review > span:nth-child(2) {
  color: #999;
}
.floor3 {
  box-sizing: border-box;
  width: 375px;
  height: 166px;
  background-color: #fff;
  margin-top: 20px;
  margin-bottom: 56px;
  font-size: 14px;
  padding: 20px 10px 0 10px;
}
.shouxu {
  color: #999;
}
.fenqi span {
  height: 43px;
  width: 102px;
  margin-right: 13px;
  text-align: center;
  border: 1px solid #ddd;
}
.fenqi {
  margin-top: 15px;
  display: flex;
}
.huabei > span:nth-child(2) {
  color: #999;
  margin-left: 10px;
}
.floor2 {
  box-sizing: border-box;
  width: 375px;
  height: 100px;
  background-color: #fff;
  padding: 14.5px 0 10px 14.5px;
  margin-top: 20px;
  font-size: 14px;
}
.floor1 {
  background-color: #fff;
}
.select > button:nth-child(3) {
  border-left: 0;
  border-top-right-radius: 13px;
  border-bottom-right-radius: 13px;
}
.select > button:nth-child(1) {
  border-right: 0;
  border-top-left-radius: 13px;
  border-bottom-left-radius: 13px;
}
.price button {
  width: 30px;
  height: 26px;
  border: 1px solid #999;
  background-color: #fff;
  color: #999;
  padding-top: 0;
  font-size: 20px;
}
.price input {
  width: 36px;
  height: 22px;
  text-align: center;
  border: 0;
  padding: 2px 0 0 0;
  border-top: 1px solid #999;
  border-bottom: 1px solid #999;
}
.price > span:nth-child(3) {
  font-size: 12px;
  color: #666;
}
.price > span:nth-child(1) {
  font-size: 20px;
  color: #ec1c23;
}
.price {
  box-sizing: border-box;
  margin: 50px 20px 0 20px;
  padding-bottom: 20px;
  display: flex;
  justify-content: space-between;
}
.title > p:nth-child(2) {
  color: rgb(255, 0, 0);
  font-family: 黑体;
  font-size: x-small;
  margin-left: 10px;
}
.title > p:nth-child(1) {
  font-size: 16px;
  color: #333;
  font-family: "Arial", "Microsoft YaHei";
  margin-bottom: 0;
}
.title {
  margin-left: 10px;
}
.back {
  padding: 10px 0 0 20px;
}
.collect {
  padding: 10px 20px 0 0;
}
.navbar img {
  width: 32px;
  height: 32px;
}
.navbar {
  width: 375px;
  height: 45px;
  display: flex;
  justify-content: space-between;
  position: fixed;
  z-index: 99;
}
.my-swipe img {
  width: 375px;
  height: 375px;
}
</style>