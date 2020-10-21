<template>
  <div style="background-color: #f7f8fa">
    <div v-if="cart.length == 0">
      <div class="head">
        <p>购物车</p>
      </div>
      <div class="content">
        <img
          src="https://www.xgdq.com/wap_themes/xgdq3/images/img_2019/gouwuche_kong@2x.png"
          alt
        />
        <div class="text">购物车还是空的,快来挑选吧</div>
        <div>
          <router-link to="/">
            <button class="go">去逛逛</button>
          </router-link>
        </div>
      </div>
    </div>
    <div v-else>
      <div class="head">
        <span>购物车</span>
        <span class="head-right" @click="redact">{{ delcancel }}</span>
      </div>
      <div class="content-list">
        <div class="table" v-for="(cartlist, index) of cart" :key="index">
          <div class="checkbox">
            <!-- 变量绑定的是数据库checked属性,计算总价 -->
            <input
              v-model="cartlist.checked"
              type="checkbox"
              @click="cancel(index)"
            />
          </div>
          <div>
            <img :src="cartlist.src" alt />
          </div>
          <div class="title">
            <div>{{ cartlist.title }}</div>
            <span>¥{{ cartlist.price.toFixed(2) }}</span>
            <!-- 整改,加减发送请求 -->
            <span class="select">
              <button @click="jian(index)">-</button>
              <input type="text" :value="cartlist.count" />
              <button @click="jia(index)">+</button>
            </span>
          </div>
        </div>
        <div class="footer">
          <!--  -->
          <div class="footer-left">
            <input type="checkbox" v-model="checkedAll" @click="selall" />
            全选({{ checklist.length }})
          </div>
          <div class="footer-text">
            <div v-show="price">
              <span>应付：</span>
              <span>¥{{ gettotal.toFixed(2) }}</span>
            </div>
          </div>
          <!-- 大整改!!!! @click="del"-->
          <button class="footer-button">
            <span>{{ delsettle }}</span>
            <span v-show="count">({{ checklist.length }})</span>
          </button>
        </div>
      </div>
    </div>
    <tabbar-shopcar></tabbar-shopcar>
  </div>
</template>

<script>
export default {
  data() {
    return {
      cart: [],
      checkedAll: true,
      checklist: [],
      delcancel: "编辑",
      count: true,
      price: true,
      delsettle: "去结算",
    };
  },
  mounted() {
    this.axios.get("/cart").then((res) => {
      this.cart = res.data;
      for (let i = 0; i < this.cart.length; i++) {
        if (this.cart[i].checked == 1) {
          this.checklist.push(this.cart[i]);
          // console.log(this.checklist.length, this.cart.length);
        }
      }
    });
  },
  methods: {
    //
    jia(id) {
      this.cart[id].count++;
    },
    //
    jian(id) {
      if (this.cart[id].count > 1) {
        this.cart[id].count--;
      }
    },
    //全选
    selall() {
      for (let i = 0; i < this.cart.length; i++) {
        if (this.checkedAll == true) {
          this.checklist = [];
          this.cart[i].checked = !this.checkedAll;
        } else {
          this.checklist.push(this.cart[i].id);
          this.cart[i].checked = true;
        }
      }
    },
    //反选
    cancel(id) {
      if (this.cart[id].checked == true) {
        this.checklist.length -= 1;
        this.checkedAll = false;
      } else if (this.cart[id].checked == false) {
        this.checklist.push(this.cart[id]);
        this.checkedAll = true;
      }
    },
    //编辑
    redact() {
      if (this.delsettle == "去结算" && this.delcancel == "编辑") {
        this.delsettle = "刪除";
        this.delcancel = "取消";
        this.count = false;
        this.price = false;
      } else {
        this.delsettle = "去结算";
        this.delcancel = "编辑";
        this.count = true;
        this.price = true;
      }
    },
    //删除
    // del() {
    //   for (let i = 0; i < this.cart.length; i++) {
    //     this.axios
    //       .get("/delete", {
    //         params: {
    //           id: this.cart[i].id,
    //         },
    //       })
    //       .then((res) => {
    //         console.log(this.cart[i].checked);
    //         if (this.cart[i].checked == true) {
    //           // this.cart.splice(i, 1);
    //         }
    //       });
    //   }
    // },
  },
  computed: {
    gettotal() {
      let total = 0;
      for (let i = 0; i < this.cart.length; i++) {
        if (this.cart[i].checked)
          total += this.cart[i].count * this.cart[i].price;
      }
      return total;
    },
  },
  // ????
  watch: {
    checkedAll() {
      if (this.checklist.length === this.cart.length) {
        this.checkedAll = true;
      } else {
        this.checkedAll = false;
      }
    },
  },
};
</script>

<style scoped>
.footer-button {
  width: 120px;
  height: 45px;
  line-height: 45px;
  background: #e50029;
  background-image: linear-gradient(-269deg, #f0262b 1%, #ff594e 99%);
  border-radius: 22.5px;
  font-size: 16px;
  color: #fff;
  border: 0;
  margin-top: 7.5px;
}
.footer-text > div > span:nth-child(2) {
  font-weight: bold;
  margin-left: 5px;
  font-size: 18px;
}
.footer-text {
  width: 145px;
  height: 55px;
  line-height: 50px;
  color: #ec1c23;
  font-size: 14px;
  text-align: center;
}
.footer-left {
  width: 75px;
  height: 55px;
  line-height: 55px;
  text-align: center;
  font-size: 14px;
}
.footer {
  width: 100%;
  height: 60px;
  background-color: #fff;
  position: fixed;
  bottom: 50px;
  display: flex;
  justify-content: space-around;
}
.select button {
  width: 30px;
  height: 26px;
  border: 1px solid #999;
  background-color: #fff;
  color: #999;
  padding-top: 0;
  font-size: 20px;
}
.select input {
  width: 36px;
  height: 22px;
  text-align: center;
  border: 0;
  padding: 2px 0 0 0;
  border-top: 1px solid #999;
  border-bottom: 1px solid #999;
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
.title > span:nth-child(2) {
  font-size: 18px;
  color: #ec1c23;
  margin-right: 10px;
}
.title > div:nth-child(1) {
  width: 190px;
  height: 20px;
  font-size: 15px;
  margin-bottom: 55px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.content-list img {
  width: 100px;
  height: 100px;
  margin: 0 10px;
}
.checkbox {
  width: 20px;
  height: 100px;
  line-height: 100px;
}
.content-list {
  margin-bottom: 110px;
  height: 1120px;
}
.table {
  box-sizing: border-box;
  width: 350px;
  height: 140px;
  background-color: #fff;
  margin: 20px 10px;
  padding: 20px 5px;
  display: flex;
}
.go {
  width: 90px;
  height: 30px;
  border: 1px solid #ec1c23;
  border-radius: 29px;
  color: #ec1c23;
  background-color: #fff;
}
.text {
  margin: 20px 0;
  color: #999;
}
.content img {
  margin-top: 180px;
  width: 84px;
  height: 64px;
}
.content {
  height: 622px;
  text-align: center;
}
.head-right {
  float: right;
  margin-right: 20px;
  font-size: 16px;
}
.head p {
  margin-top: 0;
}
.head {
  box-sizing: border-box;
  width: 100%;
  height: 45px;
  background-color: #fff;
  text-align: center;
  line-height: 45px;
  padding-left: 20px;
}
</style>