<template>
    <div>
        <ul class="settings mt-30">
            <li>
                <span>我的昵称</span>
                <input type="text" class="set_nickname" value="18782826336" disabled>
            </li>
            <li>
                <span class="my_headimg">我的头像</span>
                <div class="head_img"><img src="http://localhost:3020/image/header/middle.gif" alt=""></div>
                <div class="set_headimg"><button>上传头像</button></div>
            </li>
            <li>
                <span>个人签名</span>
                <textarea class="my_textarea" name="signstr"  cols="60" rows="6"></textarea>
            </li>
            <li>
                <span>手机号码</span>
                <p>18782826336</p>
            </li>
            <li>
                <span>身份证号</span>
                <p><a href="javascript:;">实名认证</a></p>
                <p>根据国家相关法律要求，必须实名认证，我们承诺不会泄露你的信息</p>
            </li>
        </ul>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>

ul.settings li{
    margin-top:20px;
    clear: both;
}
ul.settings li:after{
    content: "";
    display: block;
    height:0;
    clear: both;
    visibility: hidden;
}
ul.settings li span{
    float: left;
    width:76px;
    font-size:15px;
    color:#333333;
    line-height: 42px;
}
ul.settings li .set_nickname{
    float: left;
    width:289px;
    height:40px;
    border:1px solid #dddddd;
    line-height: 42px;
    background: #fff;
    text-indent: 10px;
    border-radius: 5px;
}
ul.settings li .my_headimg{
    line-height: 94px;
}
div.head_img{
    width:94px;
    float: left;
    margin-right: 32px;
}
div.head_img img{
    width:94px;height:94px;
    display: block;
    border-radius: 50%;
    border:1px solid #cccccc;
    padding:2px;
    background: #fff;
}
div.set_headimg button{
    width:114px;height:41px;
    border:1px solid #797979;
    background: #fff;
    border-radius: 4px;
    margin-top:28px;
    line-height: 41px;
    text-align: center;
    cursor: pointer;
}
div.set_headimg button:hover{
    background: #797979;
    color:#fff;
    transition: all 0.3s;
}
ul.settings li .my_textarea{
    width:459px;height:136px;
    border:1px solid #dddddd;
    padding:10px;
}
ul.settings li p{
    font-size:14px;
    line-height: 42px;
    color:#999999;
    padding-left:10px;
    float: left;
}
</style>