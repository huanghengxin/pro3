<template>
  <div>
    <div class="peijian">
      <h3>配件热卖</h3>
      <span>ACCESSORIES</span>
    </div>
    <router-link :to="`/details/${url1}`">
      <ul>
        <li v-for="(p,index) of peijian" :key="index">
          <div class="peijian-2">
            <div>
              <img v-lazy="p.src" alt />
            </div>
            <span>{{p.title}}</span>
            <span>¥{{p.price}}</span>
          </div>
        </li>
      </ul>
    </router-link>
    <router-link :to="`/classify/${url1}`">
      <more></more>
    </router-link>
  </div>
</template>

<script>
export default {
  data() {
    return {
      peijian: [],
      url1: "",
    };
  },
  mounted() {
    this.axios.get("/peijian").then((res) => {
      this.peijian = res.data.result;
      this.url1 = this.peijian[0].family_id;
    });
  },
};
</script>

<style scoped>
ul li {
  float: left;
}
.peijian-2 > span:nth-child(3) {
  font-weight: bold;
  font-size: 18px;
  color: rgba(255, 89, 78, 1);
}
.peijian-2 > span:nth-child(2) {
  display: block;
  width: 145px;
  margin-left: 15px;
  margin-bottom: 15px;
  font-weight: bold;
  font-size: 15px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #333333;
}
.peijian-2 > div > img {
  width: 100%;
  height: 171.41px;
  border-radius: 9px;
}
.peijian-2 {
  box-sizing: border-box;
  width: 173.94px;
  height: 255.5px;
  background-color: #fff;
  border-radius: 9px;
  margin-left: 10px;
  margin-top: 10px;
  text-align: center;
}
.peijian > span {
  font-size: 12px;
  color: #999999;
  margin-left: 10px;
  line-height: 62.44px;
}
.peijian {
  display: flex;
  padding-left: 25px;
}
</style>