<template>
    <div>
        <header id="header">
    <img src="http://localhost:3020/image/header/top_brank.jpg" alt="">
    <div class="header">
        <div class="header_navigation">
            <div class="header_tittle float-left py-2">
                <ul class="nav">
                    <li class="nav-item"><a href="" class="header_icon1 nav-link py-0">游久网</a></li>
                    <li class="nav-item"><a href="" class="header_icon2 nav-link py-0">游戏商城</a></li>
                    <li class="nav-item"><a href="" class="header_icon3 nav-link py-0">游久直播</a></li>
                    <li class="nav-item"><a href="" class="header_icon4 nav-link py-0">中国电竞价值榜</a></li>
                </ul>
            </div>
            <div class="header_news py-2 float-left">
                <a href="">5月份市场数据：《堡垒之夜》《PUBG》热度不减</a>
            </div>
            <div class="header_reg_login py-2 text-right float-right">
                <a href="">登录</a>
                <a href="">注册</a>
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
    
}
</script>
<style scoped>
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
   .header_other a{
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
