<template>
  <div>
    <div v-for="(hot,index) of hotmore" :key="index">
      <div class="tuigan">
        <h3>{{hot.title1}}</h3>
        <span>{{hot.title2}}</span>
      </div>
      <router-link :to="`/details/${hot.family_id}`">
        <van-swipe class="my-swipe" :autoplay="3000" indicator-color="#ec1c24">
          <van-swipe-item>
            <img v-lazy="hot.lunbo1" alt />
          </van-swipe-item>
          <van-swipe-item>
            <img v-lazy="hot.lunbo2" alt />
          </van-swipe-item>
          <van-swipe-item>
            <img v-lazy="hot.lunbo3" alt />
          </van-swipe-item>
        </van-swipe>
        <div class="tuigan-1">
          <span>{{hot.title3}}</span>
          <span>{{hot.title4}}</span>
          <span>{{hot.title5}}</span>
          <span>￥{{hot.price1}}</span>
        </div>
        <div class="tuigan">
          <div class="tuigan-2">
            <div>
              <img v-lazy="hot.src1" alt />
            </div>
            <span>{{hot.title6}}</span>
            <span>{{hot.title7}}</span>
            <span>￥{{hot.price2}}</span>
          </div>
          <div class="tuigan-2">
            <div>
              <img v-lazy="hot.src2" alt />
            </div>
            <span>{{hot.title8}}</span>
            <span>{{hot.title9}}</span>
            <span>￥{{hot.price3}}</span>
          </div>
        </div>
      </router-link>
      <router-link :to="`/classify/${hot.family_id}`">
        <more></more>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      hotmore: [],
    };
  },
  mounted() {
    this.axios.get("/more1").then((res) => {
      this.hotmore = res.data.result;
    });
  },
};
</script>

<style scoped>
.tuigan-2 > span:nth-child(4) {
  font-weight: bold;
  font-size: 18px;
  color: rgba(255, 89, 78, 1);
}
.tuigan-2 > span:nth-child(3) {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 12px;
  color: #999999;
  margin-bottom: 20px;
}
.tuigan-2 > span:nth-child(2) {
  display: block;
  width: 145px;
  margin-left: 15px;
  font-weight: bold;
  font-size: 15px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #333333;
}
.tuigan-2 > div > img {
  width: 100%;
  height: 171.41px;
  border-radius: 9px;
}
.tuigan-2 {
  box-sizing: border-box;
  width: 173.94px;
  height: 274.41px;
  background-color: #fff;
  border-radius: 9px;
  margin-left: 10px;
  margin-top: 10px;
  text-align: center;
}
.tuigan-1 > span:nth-child(4) {
  color: rgba(255, 89, 78, 1);
  font-weight: bold;
}
.tuigan-1 > span:nth-child(3) {
  display: block;
  color: #999999;
  font-size: 12px;
  margin-bottom: 10px;
}
.tuigan-1 > span:nth-child(2) {
  font-weight: bold;
  margin-left: 5px;
  color: #333333;
}
.tuigan-1 > span:nth-child(1) {
  display: inline-block;
  width: 40px;
  height: 18px;
  border: 1px solid rgba(255, 89, 78, 1);
  border-radius: 9px;
  background-color: rgba(255, 89, 78, 1);
  color: #fff;
  font-size: 12px;
  text-align: center;
}
.tuigan-1 {
  box-sizing: border-box;
  width: 355px;
  height: 130px;
  padding: 15px;
  margin-left: 10px;
  background-color: #fff;
  margin-top: -15px;
  padding-top: 35px;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
}
.tuigan > span {
  font-size: 12px;
  color: #999999;
  margin-left: 10px;
  line-height: 62.44px;
}
.tuigan > h3 {
  margin-left: 25px;
}
.tuigan {
  display: flex;
}
.my-swipe .van-swipe-item img {
  width: 355px;
  height: 300px;
  margin-left: 10px;
}
</style>