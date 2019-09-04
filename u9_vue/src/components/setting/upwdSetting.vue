<template>
    <div>
        <ul class="pwd_box mt-30">
            <li>
                <span>输入新密码</span>
                <input type="password" placeholder="请输入新密码">
            </li>
            <p>请输入4-16个数字字母组合</p>
            <li>
                <span>确认新密码</span>
                <input type="password" placeholder="请再次输入新密码">
            </li>
        </ul>
    </div>
</template>
<script>
export default {

}
</script>
<style scoped>
ul.pwd_box li{
    margin-top:10px;
    clear: both;
}
ul.pwd_box li span{
    float: left;
    width:90px;
    font-size:15px;
    color:#333333;
    line-height: 42px;
}
ul.pwd_box li input{
    float: left;
    width:291px;
    height:42px;
    border:1px solid #dddddd;
    line-height: 42px;
    background: #fff;
    text-indent: 10px;
    border-radius:5px;
}
ul.pwd_box p{
    font-size: 14px;
    line-height: 26px;
    color: #999999;
    text-indent: 92px;
}
ul.pwd_box li:after{
    content: "";
    display: block;
    height:0;
    clear: both;
    visibility: hidden;
}
</style>