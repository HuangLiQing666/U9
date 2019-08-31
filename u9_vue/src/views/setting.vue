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
                    <p>欢迎你</p>
                </div>
                <div class="float-right topnav">
                    <div><a href="javascript:;">官网首页</a></div>
                    <div><a href="javascript:;" class="icon_out">安全退出</a></div>
                </div>
            </div>
        </div>
        <div class="w-1200 mt-30 clear">
            <div class="float-left left_bar">
                <div class="user_info">
                    
                </div>
                <ul></ul>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    
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
</style>