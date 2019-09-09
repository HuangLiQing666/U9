<template>
    <div>
        <div class="headtop">
            <div class="clear w-1200">
                <h1 class="user_logo">
                    <a href="javascript:;">
                        <img src="http://localhost:3020/image/header/user_logo.png" alt="">
                    </a>
                </h1>
                <div class="user_id float-left">
                    <p>欢迎你,{{userName}}</p>
                </div>
                <div class="float-right topnav">
                    <div><a href="javascript:;">官网首页</a></div>
                    <div><a href="javascript:;" class="icon_out">安全退出</a></div>
                </div>
            </div>
        </div>
        <div class="w-1200 mt-30 clear">
            <!-- 左边信息栏 -->
            <div class="float-left left_bar">
                <div class="user_info">
                    <div class="user_img">
                        <img src="http://localhost:3020/image/header/middle.gif" alt="">
                        <h4>{{userName}}</h4>
                    </div>
                    <p>累积登录天数</p>
                    <span>1</span>
                    <p>上次登录</p>
                    <span>2019-09-03 未知</span>
                </div>
                <ul class="left_nav mt-30">
                    <li :class="{active:isActive[0]}" @click="change(0)"><a href="javascript:;">账号设置</a></li>
                    <li :class="{active:isActive[1]}" @click="change(1)"><a href="javascript:;">修改密码</a></li>
                    <li :class="{active:isActive[2]}" @click="change(2)"><a href="javascript:;">我的足迹</a></li>
                    <li :class="{active:isActive[3]}" @click="change(3)"><a href="javascript:;">我的评论</a></li>
                </ul>
            </div>
            <div class="right_bar">
                <router-view></router-view>
                <div class="btn_box clear">
                    <button class="float-left btn_sub">提交</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            isActive:[true,"","",""],
            userName:""
        }
    },
    created() {
        this.loadMore();
        console.log(this.userName)
    },
    methods:{
        change(n){
            this.isActive=new Array(4);
            this.$set(this.isActive,n,true)
            if(n==1){
                this.$router.push("/setting/upwdSetting")
            }else{
                this.$router.push("/setting/userSetting")
            }   
        },
        loadMore(){
            this.userName=sessionStorage.getItem("uname");
        }
    }
}
</script>
<style scoped>
    /* 头部 */
div.headtop{
    height:66px;
    padding:12px;
    background: #313336;
}
h1.user_logo{
    width:171px;
    float: left;
    margin-right:40px;
}
h1.user_logo img{
    width:171px;
    height:42px;
    display: block;
}
div.user_id p{
    font-size:15px;
    line-height: 42px;
    color:#999999;
}
div.topnav div{
    width:115px;
    margin-top:11px;
    float: left;
    text-align: center;
    font-size:12px;
}
div.topnav a{
    width:115px;
    height:20px;
    display: block;
    background: url("http://localhost:3020/image/header/user_ico.png") 0 0 no-repeat;
    line-height: 20px;
    color:#999;
    font-size: 15px;
}
div.topnav>div>a.icon_out{
    background-position: -115px 0;
}
/*左边信息栏*/
/*用户信息*/
div.left_bar{
    width:280px;
    background:#fff;
    padding:30px 25px;
    height:628px;
    overflow: hidden;
}
div.user_info>div.user_img{
    width:230px;
    margin:0 auto;
}
div.user_img img{
    width:80px;height:80px;
    display: block;
    border-radius:50%;
    margin:0 auto;
}
div.user_img h4{
    font-size:18px;
    line-height: 44px;
    height:44px;
    overflow: hidden;
    color:#333;
    text-align: center;
}
div.user_info p{
    font-size:14px;
    color:#999999;
    line-height: 24px;
    padding-top:15px;
    text-align: center;
}
div.user_info span{
    font-size:15px;
    color:#333;
    line-height: 30px;
    text-align: center;
    display: block;
}
/*用户设置*/
ul.left_nav li{
    width:230px;height:42px;
    background: #eeeeee;
    margin-top:3px;
    text-align: center;
    line-height: 42px;
    cursor: pointer;
    font-size:15px;
}
ul.left_nav li a{
    display: block;
    color:#666666;
}
ul.left_nav li.active{
    color:#fff;
    background:#ff7700;
}
ul.left_nav li.active a{
    display: block;
    color:#fff;
}
div.right_bar{
    width:890px;
    background: #fff;
    padding:10px 30px;
    min-height:608px;
    overflow: hidden;
}
div.btn_box{
    height:48px;
    margin:40px 0 0 90px;
    overflow: hidden;
}
div.btn_box button{
    width:130px;height:48px;
    border:none;
    line-height: 48px;
    text-align: center;
    font-size:16px;
    color:#fff;
    border-radius:2px;
}
div.btn_box button.btn_sub{
    background: #ff7700;
}
</style>