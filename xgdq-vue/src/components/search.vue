<template>
  <div style="background-color:#fff">
    <router-link to>
      <van-image
        class="dog"
        width="40"
        height="20"
        src="https://www.xgdq.com/wap_themes/xgdq3/images/w_img/shouye_logo@2x.png"
      />
    </router-link>
    <router-link to="/search">
      <van-search
        class="search"
        placeholder="搜索商品..."
        shape="round"
      />
    </router-link>
    <router-link to="/login">
        <img class="lingdang" src="../assets/search/lingdang.png" />
    </router-link>
  </div>
</template>



<style scoped>
.search {
  display: inline-block;
  width: 260px !important;
}
.dog {
  margin: 0 15px;
}
</style>