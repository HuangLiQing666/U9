<template>
    <div>
        <div class="login_mengban" :class="{canLogin:isLogin}"></div>
        <div class="login_box" :class="{canLogin:isLogin}">
            <div class="login_tit">
                <h2>登录</h2>
                <em></em>
            </div>
            <div class="login_con">
                <div class="form_group mt-10">
                    <div class="signup_group">
                        <input type="text" placeholder="请输入手机号/账号" class="input_text">
                    </div>
                </div>
                <div class="form_group mt-10">
                    <div class="signup_group">
                        <input type="password" placeholder="密码" class="input_text">
                    </div>
                </div>
                <div class="form_group mt-10">
                    <button type="submit" class="login_btn">登录</button>
                </div>
                <p class="view_clause">
                    <em><a href="javascript:;" class="move_lost">忘记密码?</a></em>
                    还没有账号?
                    <a href="javascript:;" class="move_signup">立即注册</a>
                </p>
                <div class="other_login">
                    <h3 class="mt-15">其他账号登录</h3>
                    <ul class="sj_login">
                        <li><a href="javascript:;" class="ico_qq"></a></li>
                        <li><a href="javascript:;" class="ico_wx"></a></li>
                        <li><a href="javascript:;" class="ico_wb"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <header id="header">
            <img src="http://localhost:3020/image/header/top_brank.jpg" alt="">
            <div class="header">
                <div class="header_navigation">
                    <div class="header_tittle float-left py-2">
                        <ul class="nav">
                            <li class="nav-item"><a href="javascript:;" class="header_icon1 nav-link py-0">游久网</a></li>
                            <li class="nav-item"><a href="javascript:;" class="header_icon2 nav-link py-0">游戏商城</a></li>
                            <li class="nav-item"><a href="javascript:;" class="header_icon3 nav-link py-0">游久直播</a></li>
                            <li class="nav-item"><a href="javascript:;" class="header_icon4 nav-link py-0">中国电竞价值榜</a></li>
                        </ul>
                    </div>
                    <div class="header_news py-2 float-left">
                        <a href="">5月份市场数据：《堡垒之夜》《PUBG》热度不减</a>
                    </div>
                    <div class="header_reg_login py-2 text-right float-right">
                        <a href="javascript:;"  @click="login">登录</a>
                        <a href="javascript:;" @click="sign">注册</a>
                    </div>
                    <div class="header_other py-2 float-right">
                        <a href="">官方微博</a>
                        <a href="">设为首页</a>
                        <a href="">加入收藏</a>
                    </div>
                </div>
                <div class="header_top clear clearfix">
                    <div class="header_logo float-left"><a href=""><img src="http://localhost:3020/image/logo.png" alt=""></a></div>
                    <div class="searchbox float-right">
                        <div class="formbox">
                            <input class="clear textbox" type="text" placeholder="手游">
                        </div>
                        <div class="keywords">
                            <span>热搜:</span>
                            <a href="">绝地求生助手</a>
                            <a href="">LOL</a>
                            <a href="">无限法则</a>
                            <a href="">星际争霸2</a>
                        </div>
                    </div>
                </div>
                <div class="header_navtop">
                    <ul class="nav justify-content-around py-2">
                        <li class="nav-item"><a href="" class="nav-link">新闻中心</a></li>
                        <li class="nav-item"><a href="" class="nav-link">电竞中心</a></li>
                        <li class="nav-item"><a href="" class="nav-link">电玩频道</a></li>
                        <li class="nav-item"><a href="" class="nav-link">手游</a></li>
                        <li class="nav-item"><a href="" class="nav-link">发号</a></li>
                        <li class="nav-item"><a href="" class="nav-link">视频</a></li>
                        <li class="nav-item"><a href="" class="nav-link">活动</a></li>
                        <li class="nav-item"><a href="" class="nav-link">魔兽RPG</a></li>
                        <li class="nav-item"><a href="" class="nav-link">硬件外设</a></li>
                        <li class="nav-item"><a href="" class="nav-link">MOBA论坛</a></li>
                    </ul>
                </div>
            </div>
        </header>
    </div>
</template>
<script>
export default {
    data(){
        return {
            isLogin:true
        }
    },
    methods:{
        login(){
            this.isLogin=false;
        },
        sign(){
            this.isLogin=false;
        },
    }
}
</script>
<style scoped>
/* 注册页面 */
div.login_box{
    width:590px;height:400px;
    padding:0 0 0 250px;
    position: fixed;
    top:180px;left:50%;
    margin-left:-295px;
    z-index: 10001;
    background:url("http://localhost:3020/image/header/login_1.JPG") #fff left top no-repeat;
}
div.login_box>div.login_tit{
    height:55px;
    border-bottom:1px solid #ebebeb;
    padding:0 20px;
}
div.login_box>div.login_tit h2{
    float:left;
    font-size:20px;
    color:#333333;
    line-height: 55px;
}
div.login_box>div.login_tit em{
    float: right;
    width:14px;height:14px;
    background: url("http://localhost:3020/image/header/closed.png") 0 0 no-repeat;
    display: block;
    overflow: hidden;
    margin-top: 20px;
    cursor:pointer;
}
div.login_box>div.login_con{
    padding:10px 30px 0 30px;
}
div.signup_group>.input_text{
    width:280px;height:42px;
    line-height: 42px;
    border:1px solid #dddddd;
    border-radius:5px;
    font-size:15px;
    color:#333333;
    padding-left: 12px;
}
div.form_group>.login_btn{
    width:280px;height:48px;
    display: block;
    background: #ff7700;
    color:#fff;
    line-height: 48px;
    text-align: center;
    font-size:18px;
    border:none;
    margin-top:50px;
    border-radius:5px;
}
p.view_clause{
    line-height: 42px;
    color:#bcbcbc;
    font-size:14px;
    height:42px;
}
p.view_clause>em{
    float:right;
    display: inline-block;
}
p.view_clause>em>a{
    padding-left:3px;
}
p.view_clause>em>a.move_lost{
    color:#ff5758;
}
p.view_clause>.move_signup{
    color:#406599;
}
div.other_login>h3{
    width:280px;height:18px;
    text-align: center;
    background: url("http://localhost:3020/image/header/other-loginbg.png") 0 0 no-repeat;
    line-height: 18px;
    color:#bcbcbc;
    font-size:14px;
}
div.other_login>ul.sj_login{
    width:108px;
    margin:10px auto 0;
}
div.other_login>ul.sj_login li{
    width:26px;
    float: left;
    margin:0 5px;
}
div.other_login>ul.sj_login>li>a{
    width:26px;height:26px;
    display: block;
    background: url("http://localhost:3020/image/header/login_2.PNG") 0 0 no-repeat;
    overflow: hidden;
}
div.other_login>ul.sj_login>li>a.ico_qq{background-position: 0 0;}
div.other_login>ul.sj_login>li>a.ico_wx{background-position: -36px 0;}
div.other_login>ul.sj_login>li>a.ico_wb{background-position: -72px 0;}
.login_mengban{
    width:100%;height:100%;
    position: fixed;
    background:rgba(0,0,0,0.5);
    z-index:10000;
}
.canLogin{
    display: none;
}
.header{
    width:1240px;
    margin:0 auto;
}
.header_navigation,.header_tittle{
    height:40px;
}
.header_tittle>ul>li>a,.header_news a,.header_reg_login a,.header_other a,.header_navtop>ul>li>a
{
    font-size: 14px;
    color:#333;
}
.searchbox {
    width:300px;
    float:right;
    margin-top: 22px;
}
.formbox{
    width:300px;height:32px;
    border:1px solid #f6ae66;
    background:url("http://localhost:3020/image/header/search.png") 0 0 no-repeat;
}
.textbox{
    width:270px;height:32px;
    background: none;
    border:none;
    float: left;
    line-height: 32px;
    text-indent:10px;
    font-size: 14px;
    color:#999999;
}
.keywords{
    font-size:12px;
    line-height: 18px;
    padding-top: 6px;
}
.keywords a{ padding:0 5px;}
.header_top{
    width:1240px;height:100px;
}
.header_navtop{
    background:#fff;
    border-top:2px solid #EE7701;
    height:63px;
}
.header_icon1{
    background:url("http://localhost:3020/image/header/icon.png") no-repeat 0px 1px;
    padding-left:18px;
}
.header_icon2{
    background: url("http://localhost:3020/image/header/icon.png") no-repeat -85px 1px;
    padding-left:18px;
}
.header_icon3{
    background: url("http://localhost:3020/image/header/icon.png") no-repeat -202px 1px;
    padding-left:18px;
}
.header_icon4{
    background: url("http://localhost:3020/image/header/ico_rank.png") no-repeat 0px center;
    padding-left:18px;
    border-right:1px solid #aaa;
}
.header_news{
    padding-left: 20px;
}
 .header_news>a{
     background: url("http://localhost:3020/image/header/horn.png") no-repeat 0px center;
     padding-left:18px;
 }
   .header_other>a,.header_reg_login>a{
       padding:0 10px;
   }
   .header_top{
       background:url("http://localhost:3020/image/header/headbg.jpg") no-repeat center top;
   }
   .header_logo{
       margin-top:27px;
   }
   .header_search{
       margin-top:22px;
   }
   .header_navtop>ul>li>a{font-size: 18px;}
</style>
