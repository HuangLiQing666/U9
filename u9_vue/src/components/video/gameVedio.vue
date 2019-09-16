<template>
    <div>
        <my-header></my-header>
        <div class="video_container">
            <div class="clear_fix mt-30">
                <div class="vdo_left">
                    <div class="vdo_top">
                        你的位置:
                        <a href="javascript:;">首页</a>
                        &nbsp;>>&nbsp;
                        <a href="javascript:;">英雄联盟</a>
                        &nbsp;>>&nbsp;
                        <a href="javascript:;">官方视频</a>
                    </div>
                    <div class="robing_con mt-20">
                        <div class="vdo_tit">
                            <h1>星全新动画短片《星之守护者：光与蚀》</h1>
                        </div>
                        <div class="vdo_subtit">
                            <h4>2019-9-12 13:14:23    文章来源：官方    作者：官方</h4>
                            <div class="Introduction">
                                三颗曾经一度黯淡的星星，即将沉入永夜。2019星之守护者洛、霞、佐伊、妮蔻正式登场，开启全新故事篇章！ 
                            </div>
                        </div>
                        <div class="game_vedio">
                            <video controls></video>
                        </div>
                    </div>
                    <div class="newcom clear_fix mt-15">
                        <div class="com_tit">
                            <h3>评论(已有0条评论)</h3>
                        </div>
                        <div class="com_tar">
                            <textarea placeholder="请输入内容" style="margin: 0px; width: 580px; height: 105px;"></textarea>
                        </div>
                        <div class="com_wrt">
                            <button class="com_btn">发布评论</button>
                        </div>
                    </div>
                    <div class="content">
                        <h6>全部评论</h6>
                        
                    </div>
                </div>
            </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
div.video_container{
    width:980px;
    margin:0 auto;
    position: relative;
}
div.vdo_left{
    width:660px;
    float: left;
}
div.vdo_right{
    width:300px;
    background: #fff;
    padding:10px 20px;
    overflow: hidden;
    float: right;
}
div.vdo_left>div.vdo_top{
    height: 40px;
    line-height: 40px;
    overflow: hidden;
    color:#333;
    text-indent: 18px;
    font-size: 16px;
    border-bottom: 1px solid #ccc;
}
div.vdo_left>div.robing_con{
    font-size: 14px;
    padding:5px 15px 15px 15px;
    height:auto;
    overflow: hidden;
}
div.vdo_tit h1{
    font-size: 24px;
    line-height: 42px;
    display: block;
    color:#ac1c0f;
    text-align: center;
}
div.vdo_subtit h4{
    font-size: 14px;
    padding:10px 0;
    color:#666666;
    text-align: center;
    margin-bottom: 10px;
}
div.Introduction{
    border:1px solid #d9d9d9;
    background: #fff;
    padding:12px;
    margin-bottom: 30px;
    line-height: 26px;
    color:#666;
}
div.newcom{
    padding:30px  22px;
    background: #fff;
    color:#333;
    line-height: 24px;
    font-size: 14px;
}
div.newcom>div.com_tit{
    font-size: 16px;
    border-top:1px solid #cccccc;
}
div.newcom>div.com_tit h3{
    font-size: 16px;
    line-height: 20px;
    float: left;
    border-top:2px solid #f26b27;
    display: block;
    position: relative;
    top:-1px;
    padding-top: 20px;
}
div.newcom>div.com_tar{
    margin-top: 55px;
    border:1px solid #dddddd;
    padding:5px;
    border-radius: 5px;
}
div.newcom>div.com_tar textarea{
    width: 100%!important;
    border:none;
    background: #fff;
    height:100px!important;
    line-height: 25px;
    color:#bebebe!important;
    display: block;
    outline: none;
    margin-top: 0;
    padding:0;
}
div.newcom>div.com_wrt{
    height:58px;
    padding:10px 0;
    line-height: 38px;
}
div.newcom>div.com_wrt button{
    width:110px;
    height:38px;
    line-height: 38px;
    background: #f26b27;
    border: none;
    color:#fff;
    float: right;
    border-radius: 5px;
    cursor: pointer;
}
</style>