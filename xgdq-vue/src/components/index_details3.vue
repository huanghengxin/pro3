<template>
  <div>
    <div v-for="(hot,index) of solo" :key="index">
      <div class="hot">
        <h3>{{hot.title1}}</h3>
        <span>{{hot.title2}}</span>
      </div>
      <router-link :to="`/details/${hot.family_id}`">
      <img v-lazy="hot.src" alt />
      <div class="hot-1">
        <span>{{hot.title3}}</span>
        <span>{{hot.title4}}</span>
        <span>{{hot.title5}}</span>
        <span>￥{{hot.price}}</span>
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
      solo: [],
    };
  },
  mounted() {
    this.axios.get("/solo1").then((res) => {
      this.solo = res.data.result;
      // console.log(this.solo);
    });
  },
};
</script>

<style scoped>
.hot-1 > span:nth-child(4) {
  color: rgba(255, 89, 78, 1);
  font-weight: bold;
}
.hot-1 > span:nth-child(3) {
  display: block;
  color: #999999;
  font-size: 12px;
  margin-bottom: 10px;
}
.hot-1 > span:nth-child(2) {
  font-weight: bold;
  margin-left: 5px;
  color: #333333;
}
.hot-1 > span:nth-child(1) {
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
.hot-1 {
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
img {
  border-radius: 10px;
  width: 355px;
  height: 300px;
  margin-left: 10px;
}
.hot > span {
  font-size: 12px;
  color: #999999;
  margin-left: 10px;
  line-height: 62.44px;
}
.hot {
  display: flex;
  padding-left: 25px;
}
</style>