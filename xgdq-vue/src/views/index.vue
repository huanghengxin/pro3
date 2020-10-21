<template>
  <div style="background-color:#f4f4f4">
    <search></search>
    <carousel></carousel>
    <div class="two">
      <ul>
        <li>
          <img src="../assets/index/new.png" alt />
          <span>新品推荐</span>
        </li>
        <li>
          <img src="../assets/index/vip.png" alt />
          <span>会员福利</span>
        </li>
        <li>
          <img src="../assets/index/weixiu.png" alt />
          <span>中央维修</span>
        </li>
        <li>
          <img src="../assets/index/old.png" alt />
          <span>以旧换新</span>
        </li>
      </ul>
    </div>
    <div class="three">
      <div>
        <img src="../assets/index/gfzx.jpg" alt />
      </div>
      <van-notice-bar :scrollable="false">
        <van-swipe vertical class="notice-swipe" :autoplay="3000" :show-indicators="false">
          <van-swipe-item @click="showalert">· 科技赋能扫地机，小狗吸尘器新品R60展现21年专业硬实力</van-swipe-item>
          <van-swipe-item @click="showalert">· 售后服务成投诉重灾区，小家电品牌如何破局？</van-swipe-item>
          <van-swipe-item @click="showalert">· 历代吸力最强！小狗智能无线吸尘器T12旗舰新品来了</van-swipe-item>
          <van-swipe-item @click="showalert">· 小狗无线吸尘器T11亮相天猫，兼顾轻与强</van-swipe-item>
        </van-swipe>
      </van-notice-bar>
      <span class="right"></span>
    </div>
    <van-overlay v-show="alert">
      <div class="wrapper">
        <div class="alert">
          <button>
            <span>温馨提示</span>
            <span @click="closealert">×</span>
          </button>
          <div>本条咨询收费0.1元</div>
          <button @click="closealert">确定</button>
        </div>
      </div>
    </van-overlay>
    <div class="activity">
      <h3>精选活动</h3>
      <span>SELECTION OF ACTIVITIES</span>
    </div>
    <div class="five">
      <img
        src="https://www.xgdq.com/public/images/27/86/ab/e9e2a7ac01858e5e9298d610b6985e1fb1fc53f1.png?1591177872#w"
        alt
      />
      <img
        src="https://www.xgdq.com/public/images/f7/b9/5c/54a3243ae80db2f13341660fd9a12b5360bf5eab.png?1589120238#w"
        alt
      />
      <img
        src="https://www.xgdq.com/public/images/d9/20/cf/a3339f9512430b1c8ebe70f7c9ff0e1ffdcf4e82.jpg?1594368014#h"
        alt
      />
      <img
        src="https://www.xgdq.com/public/images/0e/07/cf/0555e3ee47e293628266ad39fb7b3e838c86982d.png?1589120418#h"
        alt
      />
      <img
        src="https://www.xgdq.com/public/images/c0/ad/82/068582ae75fa8999907bb36beb41c9c14747b45f.png?1589120442#h"
        alt
      />
    </div>
    <index-details1></index-details1>
    <index-details2></index-details2>
    <index-details3></index-details3>
    <index-details4></index-details4>
    <index-details5></index-details5>
    <div class="bottom">
      <span>--------</span>
      <span>我是有底线的</span>
      <span>--------</span>
    </div>
    <tabbar></tabbar>
  </div>
</template>

<script>
export default {
  data() {
    return {
      alert: false,
    };
  },
  methods: {
    showalert() {
      if (this.alert == false) {
        this.alert = true;
      }
    },
    closealert() {
      if (this.alert == true) {
        this.alert = false;
      }
    },
  },
};
</script>

<style scoped>
.wrapper {
  display: flex;
  align-items: center;
  height: 100%;
}
.bottom > span {
  font-size: 14px;
  color: #cccccc;
  margin: 0 5px 0 0;
}
.bottom {
  width: 375px;
  height: 76px;
  line-height: 76px;
  text-align: center;
  padding-bottom: 100px;
}
.five > img:nth-child(1) {
  width: 165px;
  height: 110.33px;
  margin-right: 5px;
}
.five > img:nth-child(2) {
  width: 165px;
  height: 110.33px;
}
.five > img:nth-child(3) {
  width: 108.33px;
  height: 147.72px;
  margin-right: 5px;
}
.five > img:nth-child(4) {
  width: 108.33px;
  height: 147.72px;
  margin-right: 5px;
}
.five > img:nth-child(5) {
  width: 108.33px;
  height: 147.72px;
}
.five {
  box-sizing: border-box;
  width: 355px;
  height: 285px;
  background-color: #fff;
  margin: 0 10px;
  padding: 10px;
}
.activity > span {
  font-size: 12px;
  color: #999999;
  margin-left: 10px;
  line-height: 62.44px;
}
.activity {
  clear: both;
  display: flex;
  padding-left: 25px;
}
.alert > button:nth-child(3) {
  width: 140px;
  height: 40px;
  background-color: rgb(255, 110, 66);
  outline: none;
  border: 1px solid #fff;
  border-radius: 18px;
  color: #fff;
  margin: 20px 68px 30px;
}
.alert > div {
  padding: 30px 20px;
}
.alert > button:nth-child(1) {
  width: 275px;
  height: 40px;
  background-color: rgb(255, 110, 66);
  outline: none;
  border: 0;
  color: #fff;
  font-size: 18px;
  display: flex;
  justify-content: space-between;
  padding-top: 8px;
  padding-left: 20px;
  padding-right: 20px;
}
.alert {
  box-sizing: border-box;
  width: 315px;
  height: 222px;
  background-color: #fff;
  position: fixed;
  border: 1px solid #fff;
  border-radius: 3%;
  margin-left: 30px;
  padding: 10px 20px;
}
.right {
  width: 14px;
  height: 14px;
  float: right;
  background: url("https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/zx_03.jpg")
    no-repeat;
  background-size: 100%;
  margin-top: 10px;
  margin-right: 25px;
}
.notice-swipe .van-swipe-item {
  overflow: hidden;
  text-overflow: ellipsis;
}
.three .van-notice-bar {
  background-color: #fff;
  border-left: 2px solid #f4f4f4;
  margin-left: 15px;
  font-size: 12px;
  width: 170px;
  height: 20px;
  margin-top: 10px;
  color: #000;
  float: left;
}
.three > div:nth-child(1) > img {
  width: 29px;
  height: 29px;
  padding-top: 5px;
}
.three > div:nth-child(1) {
  float: left;
}
.three {
  height: 40px;
  padding: 8px 0 8px 25px;
  background-color: #fff;
}
.notice-swipe {
  height: 40px;
  line-height: 40px;
}
.two ul li span {
  font-size: 12px;
  display: block;
  margin-bottom: 20px;
}
.two ul li img {
  width: 42px;
  height: 42px;
  margin-bottom: 10px;
}
.two ul {
  display: flex;
  justify-content: space-around;
}
.two {
  padding-top: 20px;
  border-bottom: 2px solid #f4f4f4;
  background-color: #fff;
}
</style>