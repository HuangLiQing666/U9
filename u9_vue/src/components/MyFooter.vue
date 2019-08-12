<template>
    <div>
        <footer id="footer">
    <div class="linkbox">
        <div class="w1000">
            <div class="clear d-flex justify-content-around">
                <div class="float-left">
                    <div>
                        <h3 class="font_tittle">新闻中心</h3>
                    </div>
                    <div class="con">
                        <a href="">国内新闻</a>
                        -
                        <a href="">日韩新闻</a><br/>
                        <a href="">欧美新闻</a>
                        -
                        <a href="">产业新闻</a>
                    </div>
                </div>
                <div class="float-left">
                    <div>
                        <h3 class="font_tittle">新游频道</h3>
                    </div>
                    <div class="con">
                        <a href="">图说新游</a>
                        -
                        <a href="">新游要闻</a><br/>
                        <a href="">新游视频</a>
                        -
                        <a href="">新游评测</a>
                    </div>
                </div>
                <div class="float-left">
                    <div>
                        <h3 class="font_tittle">电子竞技</h3>
                    </div>
                    <div class="con">
                        <a href="">DOTA</a>
                        -
                        <a href="">DOTA2</a><br/>
                        <a href="">魔兽RPG</a>
                        -
                        <a href="">MOBA论坛</a>
                    </div>
                </div>
                <div class="float-left">
                    <div>
                        <h3 class="font_tittle">手游发卡</h3>
                    </div>
                    <div class="con">
                        <a href="">YOYO手游</a>
                        -
                        <a href="">发号平台</a><br/>
                        <a href="">游戏礼包</a>
                        -
                        <a href="">账号预定</a>
                    </div>
                </div>
                <div class="float-left">
                    <div>
                        <h3 class="font_tittle">热门专区</h3>
                    </div>
                    <div class="con">
                        <a href="">梦幻西游</a>
                        -
                        <a href="">地下城与勇士</a><br/>
                        <a href="">英雄联盟</a>
                        -
                        <a href="">穿越火线</a>
                    </div>
                </div>
                <div class="float-left">
                    <div>
                        <h3 class="font_tittle">玩家社区</h3>
                    </div>
                    <div class="con">
                        <a href="">活动专区</a>
                        -
                        <a href="">地图发布</a><br/>
                        <a href="">玩转游久</a>
                        -
                        <a href="">流行音乐</a>
                    </div>
                </div>
                <div></div>
            </div>
            <div class="xbox">
                <div class="">
                    <h3 class="font_tittle">友情链接</h3>
                </div>
                <div class="con">
                    <a class="ml-15" href="">4399游戏</a>
                    <a href="">腾讯游戏</a>
                    <a href="">中华网游戏</a>
                    <a href="">中关村游戏网</a>
                    <a href="">凤凰游戏</a>
                    <a href="">360游戏频道</a>
                    <a href="">口袋巴士</a>
                    <a href="">U9游戏</a>
                    <a href="">游戏狗</a>
                    <a href="">51wan</a>
                    <a href="">3YX服务网</a>
                    <a href="">君临天下</a>
                    <a href="">游戏时光</a>
                    <a href="">龙珠视频</a>
                    <a href="">fanx</a>
                    <a href="">更多</a>
                </div>
            </div>
        </div>
    </div>
    <div class="foot">
        <div class="w1000">
            <p class="">
                <a href="">关于游久</a>
                <a href="">联系我们</a>
                <a href="">诚聘英才</a>
                <a href="">商务合作</a>
                <a href="">友情链接</a>
                <a href="">网站导航</a>
                <a style="color:red" href="">法律声明</a>
                <a href="">总经理邮箱</a>
            </p>
            <p>Copyright © 2004 - 2019 UUU9.Com Co. All Rights Reserved 北京游龙腾信息技术有限公司 版权所有</p>
            <p>
                <a href="">京ICP备13031394号-7</a>
                <img src="http://localhost:3020/image/footer/beian.png" alt=""/>
                <a href="">京公网安备 11010502030727号</a>
                京网文 [2016] 6508-880号  京ICP证130464号  违法和不良信息举报电话：029-68663219   举报邮箱：
                <a href="">jubao@u9time.com</a>
            </p>
            <div class="text-center mt-3">
                <a class="p-2" href=""><img src="http://localhost:3020/image/footer/icp.gif" alt=""></a>
                <a class="p-2" href=""><img src="http://localhost:3020/image/footer/wangjing.gif" alt=""></a>
                <a class="p-2" href=""><img src="http://localhost:3020/image/footer/anwang.gif" alt=""></a>
                <a class="p-2" href=""><img src="http://localhost:3020/image/footer/whjy.png" alt=""></a>
            </div>
            <div class="text-center mt-4">健康游戏公告： 抵制不良游戏 拒绝盗版游戏 注意自我保护 谨防受骗上当 适度游戏益脑 沉迷游戏伤身 合理安排时间 享受健康生活</div>
        </div>
    </div>
</footer>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    .linkbox{
    background:#383838;
    margin-top:120px;
}
.foot{background:#2e2e2e;}
.foot a{color:#999999;}
.foot>div>p:first-child>a+a::before{
    display: inline-block;
    content:"|";
    margin:0 5px 5px 0;
}
.foot p{
    text-align: center;
    line-height: 30px;
    margin:0;}
.w1000{
    width:1000px;height:326px;
    color:#999999;
    overflow:hidden;
    margin:0 auto 0;
    font-size:12px;
    padding-top:50px;
}
.font_tittle{
    font-size:15px;
    color:#adadad;
    font-weight:bold;
    background:url("http://localhost:3020/image/footer/h3.jpg") 0 0 no-repeat;
    padding-left:15px;
}
.con{margin-top:10px;}
.con a{
    color:#999999;
    padding:0 8px;
    line-height:30px;
}
.xbox{
    margin-top:20px;
}
.xbox>.con>a{padding:0;}
.xbox>.con>a+a::before{
    display:inline-block;
    content:"-";
    margin-left:10px;
    margin-right:10px;
}
.ml-15{margin-left:15px;}
</style>

