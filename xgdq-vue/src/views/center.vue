<template>
    <div>
        <div class="head">
            <img src="https://www.xgdq.com/wap_themes/xgdq3/images/ad9.jpg" alt="">
        </div>
        <div class="person">
            <img src="https://www.xgdq.com/public/images/65/6b/be/1a1ebd4d46fa1c49e2edf46c0017669c6e150419.png" alt="">
        </div>
        <div class="username">
            <span>{{this.$store.state.username}}</span>
        </div>
        <div class="logout">
            <button @click="logout">退出</button>
        </div>
    </div>
</template>

<script>
export default {
    methods:{
        logout(){
            this.$store.commit("logout")
            this.$router.push("/")
        }
    },
}
</script>

<style scoped>
.logout{
    position: absolute;
    margin-top: 65px;
    left: 170px;
}
.username{
    position: absolute;
    top: 175px;
    left: 145px;
}
.person{
    position: absolute;
    top: 100px;
    left: 155px;
}
.head img{
    width: 375px;
    height: 140px;
}
</style>