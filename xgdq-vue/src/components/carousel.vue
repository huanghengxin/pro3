<template>
  <div>
    <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
      <van-swipe-item v-for="(img,index) of carousel" :key="index">
        <img v-lazy="img.src" alt />
      </van-swipe-item>
    </van-swipe>
  </div>
</template>

<script>
export default {
  data() {
    return {
      carousel: [],
    };
  },
  mounted() {
    this.axios.get("/carousel").then((res) => {
      this.carousel = res.data.result;
    });
  },
};
</script>

<style scoped>
.my-swipe .van-swipe-item {
  height: 210px;
}
img {
  width: 375px;
  height: 210px;
}
</style>