<template>
  <div style="height: 667px">
    <div class="title">
      <span>{{ phone }}</span>
    </div>
    <van-cell-group class="form">
      <van-field v-model="value1" clearable placeholder="请输入手机号/邮箱" />
      <van-field
        v-model="value2"
        clearable
        placeholder="请输入短信验证码:123456"
      />
      <div class="yanzhengma">
        <span class="gang"></span>
        <span>获取验证码</span>
      </div>
      <span class="userxieyi">
        登录表示您同意自动注册
        <span style="text-decoration: underline">《用户协议》</span>
      </span>
      <router-link class="userreg" to="/register">立即注册</router-link>
      <van-button :disabled="login" @click="logintishi1" color="#FF594E"
        >登录</van-button
      >
    </van-cell-group>

    <van-cell-group class="form1" v-show="reg">
      <van-field
        v-model="value3"
        clearable
        placeholder="请输入手机号/邮箱/用户名"
      />
      <van-field
        class="pwd"
        v-model="value4"
        type="password"
        clearable
        placeholder="请输入密码"
      />
      <span class="userxieyi">忘记密码?</span>
      <router-link class="userreg1" to="/register">立即注册</router-link>
      <van-button :disabled="login" @click="logintishi2" color="#FF594E"
        >登录</van-button
      >
    </van-cell-group>

    <span class="change" @click="changed">{{ change }}</span>
    <div class="tishi" v-show="tishikuang">
      <img
        src="https://www.xgdq.com/wap_themes/xgdq3/images/w_img/error.png"
        alt
      />
      <p>手机号不存在</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value1: "",
      value2: "",
      value3: "",
      value4: "",
      phone: "手机号登录",
      change: "账号密码登录>",
      reg: false,
      login: true,
      tishikuang: false,
    };
  },
  methods: {
    changed() {
      if (this.change == "账号密码登录>") {
        this.change = "手机短信登录>";
        this.phone = "账号密码登录";
        this.reg = true;
      } else if (this.change == "手机短信登录>") {
        this.change = "账号密码登录>";
        this.phone = "手机号登录";
        this.reg = false;
      }
    },
    logintishi1() {
      this.axios.post("/login1", "phone=" + this.value1).then((res) => {
        if (res.data.code == 1 && this.value2 == "123456") {
          //提交mutation,改变state中登录状态
          this.$store.commit("setislogin");
          //将用户登录的状态存储到webstorage中
          sessionStorage.setItem("setislogin", true);
          //提交mutation,改变state中username
          this.$store.commit("getusername", res.data.result.phone);
          //将登录用户名保存到webstorage中
          sessionStorage.setItem("username", res.data.result.phone);
          this.$router.push("/");
        } else {
          this.tishikuang = true;
        }
      });
    },
    logintishi2() {
      this.axios
        .post("/login2", "phone=" + this.value3 + "&upwd=" + this.value4)
        .then((res) => {
          if (res.data.code == 1) {
            //提交mutation,改变state中登录状态
            this.$store.commit("setislogin");
            //将用户登录的状态存储到webstorage中
            sessionStorage.setItem("setislogin", true);
            //提交mutation,改变state中username
            this.$store.commit("getusername", res.data.result.phone);
            //将登录用户名保存到webstorage中
            sessionStorage.setItem("username", res.data.result.phone);
            this.$router.push("/");
          } else {
            this.tishikuang = true;
          }
        });
    },
  },
  computed: {
    changev1() {
      const { value1, value2 } = this;
      return {
        value1,
        value2,
      };
    },
    changev2() {
      const { value3, value4 } = this;
      return {
        value3,
        value4,
      };
    },
  },
  watch: {
    tishikuang() {
      setTimeout(() => {
        if (this.tishikuang == true) {
          this.tishikuang = false;
        }
      }, 3000);
    },
    changev1(e) {
      let regphone = /^1[3-9]\d{9}$/;
      if (
        this.value1 !== "" &&
        regphone.test(this.value1) &&
        this.value2 == "123456"
      ) {
        this.login = false;
      } else {
        this.login = true;
      }
    },
    changev2(e) {
      let regphone = /^1[3-9]\d{9}$/;
      let regpwd = /^\w{6,16}$/;
      if (
        this.value3 !== "" &&
        regphone.test(this.value3) &&
        this.value4 !== "" &&
        regpwd.test(this.value4)
      ) {
        this.login = false;
      } else {
        this.login = true;
      }
    },
  },
};
</script>

<style scoped>
.tishi p {
  text-align: center;
  font-family: PingFangSC-Regular;
  font-size: 12px;
  color: #ffffff;
  letter-spacing: 0.58px;
  line-height: 18px;
  padding-top: 8px;
}
.tishi img {
  width: 36px;
  margin: 0 auto;
  height: 36px;
  margin-top: 29px;
  margin-left: 35px;
}
.tishi {
  position: fixed;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  margin: auto;
  width: 120px;
  height: 120px;
  background: #3a3a3a;
  opacity: 0.9;
  border-radius: 4px;
  z-index: 999999;
  transition: all 0.3s;
  padding: 0 5px;
  box-sizing: border-box;
}
.form1 > .van-field:nth-child(2) {
  width: 235px;
  border-right: 0;
}
.form1 .van-field {
  box-sizing: border-box;
  width: 335px;
  height: 48px;
  line-height: 48px;
  font-size: 16px;
  border: 1px solid #999999;
  margin-bottom: 15px;
  padding: 0 30px 0 15px;
}
.form1 {
  width: 335px;
  height: 285px;
  font-size: 12px;
  padding: 0 20px;
  top: -285px;
}
.userreg1 {
  color: #999999;
  margin-left: 230px;
}
.pwd {
  width: 335px !important;
  border: 1px solid #999999 !important;
}
.change {
  display: inline-block;
  width: 335px;
  text-align: center;
  text-decoration: underline;
  color: #999;
  font-size: 14px;
  margin-left: 20px;
  position: absolute;
  top: 465px;
}
.van-button {
  width: 335px;
  height: 50px;
  margin-top: 50px;
}
.userreg {
  color: #999999;
  margin-left: 75px;
}
.userxieyi {
  display: inline-block;
  clear: both;
  color: #999999;
}
.gang {
  font-size: 16px;
  position: absolute;
  right: 130px;
  width: 1px;
  height: 20px;
  background: #ccc;
  top: 30%;
  transform: translateY(-50%);
}
.yanzhengma {
  box-sizing: border-box;
  float: left;
  width: 100px;
  height: 48px;
  line-height: 45px;
  border: 1px solid #999999;
  border-left: 0;
  font-size: 14px;
  color: #e50029;
  padding-left: 10px;
}
.form > .van-field:nth-child(2) {
  width: 235px;
  float: left;
  border-right: 0;
}
.form .van-field {
  box-sizing: border-box;
  width: 335px;
  height: 48px;
  line-height: 48px;
  font-size: 16px;
  border: 1px solid #999999;
  margin-bottom: 15px;
  padding: 0 30px 0 15px;
}
.form {
  width: 335px;
  height: 285px;
  font-size: 12px;
  padding: 0 20px;
}
.title {
  box-sizing: border-box;
  width: 375px;
  height: 180px;
  line-height: 90px;
  font-size: 22px;
  padding: 30px 20px 45px;
  text-align: center;
}
</style>