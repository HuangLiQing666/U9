<template>
    <div>
        <my-header></my-header>
        <article>
            <div class="navbox">
                <dl class="clear">
                    <dt class="dt_1">主流电竞</dt>
                    <dd>
                        <a href="">DOTA</a>
                        <a href="">DOTA2</a>
                        <a class="red" href="">棋技研究所<i class="h"></i></a>
                        <a class="red" href="">绝地求生</a>
                        <a href="">LOL<i class="h"></i></a>
                        <a href="">穿越火线<i class="h"></i></a>
                        <a class="red" href="">无限法则</a>
                        <a href="">CSGO<i class="h"></i></a>
                        <a href="">堡垒之夜<i class="h"></i></a>
                        <a class="red" href="">war3</a>
                    </dd>
                </dl>
                <dl class="clear">
                    <dt class="dt_2">网红爆款</dt>
                    <dd>
                        <a href="">DNF<i class="n"></i></a>
                        <a href="">CF手游<i class="n"></i></a>
                        <a class="red" href="">第五人格</a>
                        <a class="red" href="">王者荣耀</a>
                        <a href="">逍遥情缘</a>
                        <a href="">开拓<i class="n"></i></a>
                        <a href="">战舰世界闪击战</a>
                        <a href="">我叫MT4<i class="n"></i></a>
                        <a href="">FIFA足球世界<i class="n"></i></a>
                        <a href="">妖神记<i class="n"></i></a>
                    </dd>
                </dl>
                <dl class="last_box clear">
                    <dt class="dt_3">游戏新作</dt>
                    <dd>
                        <a class="first" href="">灵山奇缘<i class="n"></i></a>
                        <a href="">武魂2<i class="n"></i></a>
                        <a href="">龙族幻想</a>
                        <a class="red" href="">和平精英<i class="n"></i></a>
                        <a href="">逆水寒<i class="n"></i></a>
                        <a href="">艾兰岛<i class="n"></i></a>
                        <a class="red" href="">荒野行动Plus<i class="n"></i></a>
                        <a href="">英雄战歌<i class="n"></i></a>
                        <a class="red" href="">天龙八部手游<i class="n"></i></a>
                        <a href="">QQ炫舞手游<i class="n"></i></a>
                        <a class="first" href="">红警OL手游<i class="n"></i></a>
                        <a class="red" href="">奇迹MU：觉醒</a>
                        <a href="">巅峰坦克</a>
                        <a href="">我的王朝<i class="n"></i></a>
                        <a class="red" href="">剑3:指尖江湖<i class="n"></i></a>
                        <a href="">雪鹰领主</a>
                        <a class="red" href="">火影忍者OL</a>
                        <a href="">魔力宝贝</a>
                        <a href="">梦幻诛仙手游</a>
                        <a class="red" href="">FIFA足球世界</a>
                        <a class="first" href="">泰亚史诗</a>
                        <a href="">消除者联盟</a>
                        <a href="">QQ飞车手游</a>
                        <a class="red" href="">神都夜行录<i class="n"></i></a>
                        <a href="">率土之滨</a>
                        <a href="">楚留香</a>
                        <a href="">终结者2</a>
                        <a href="">琅琊榜风起长林</a>
                        <a class="red" href="">征途手机版</a>
                        <a href="">诺亚传说2</a>
                    </dd>
                </dl>
            </div>
            <div class="subnav">
                <dl class="clear">
                    <dt>实时节奏</dt>
                    <dd class="d-flex">
                        <a href="">游戏基<p>12</p></a>
                        <a href="">DNF<p>8</p></a>
                        <a href="">暗黑破坏神<p>10</p></a>
                        <a href="">DOTA2卡牌锦标赛<p>66</p></a>
                        <a href="">PUBG赛事<p>12</p></a>
                        <a href="">刀牌<p>12</p></a>
                        <a href="">蜘蛛侠<p>22</p></a>
                        <a href="">Steam<p>12</p></a>
                        <a href="">S8冠军<p>12</p></a>
                        <a href="">虚荣联赛<p>6</p></a>
                    </dd>
                </dl>
            </div>
            <div class="index_head w-1200 clear">
                <div class="mt-10"><img src="http://localhost:3020/image/index/5d1f05c700787.jpg" alt=""></div>
                <div class="mt-20 index_tittle clear">
                    <div id="index_tittle_carousel" class="carousel float-left" data-ride="carousel">
                        <carousel-index/>  
                    </div>
                    <div class="hotnews float-right">
                        <h2><a href="">Epic喜加一：免费领友尽游戏《胡闹厨房》</a></h2>
                        <h3><a href="">NS大乱斗 15岁女选手比赛打太好遭霸凌</a></h3>
                        <h2><a href="">《决战!平安京》决战花火季重磅开启</a></h2>
                        <h3><a href="">《决战!平安京》金鱼姬泳装皮肤即将上架</a></h3>
                        <h2><a href="">《天龙八部手游》开拓泥塑文创新蓝海</a></h2>
                        <h3><a href="">《天龙八部手游》三大场景海报首发</a></h3>
                    </div>
                </div>
            </div>
            <div class="esports mt-10">
                <div class="w-1200 clear">
                    <div class="esbox">
                        <div class="estit">
                            <h2>电竞赛事</h2>
                        </div>
                        <esnews/>
                    </div>
                </div>
            </div>
            <div class="w-1200" ref="newstab">
                <div class="clear mt-25">
                    <div class="news float-left">
                        <div class="news_tab clear" :class="{newsFixed:isFix}" @scroll.native="isfixed">
                            <div class="news_tit" @click="change">
                                <a :class="{open:isOpen[0]==n}" data-target="0" href="javascript:;">今日要闻</a>
                                <a :class="{open:isOpen[1]==n}" data-target="1" href="javascript:;">电子竞技</a>
                                <a :class="{open:isOpen[2]==n}" data-target="2" href="javascript:;">单机游戏</a>
                                <a :class="{open:isOpen[3]==n}" data-target="3" href="javascript:;">八卦综合</a>
                            </div>
                            <em class="float-right"><a href="javascript:;"><i></i>成为作者</a></em>
                        </div>
                        <div class="newslist clear">
                            <div :class="{show:shows[0]}">
                                <div class="news_box" v-for="(item,i) of todatNews" :key="i">
                                    <h4>
                                        <p class="settop">置顶</p>
                                        <a href="" v-text="item.news_tit"></a>
                                    </h4>
                                    <dl class="clear">
                                        <dt><a href="javascript:;"><img class="scale_img" :src="'http://localhost:3020/image/index/'+item.news_pic" alt=""></a></dt>
                                        <dd>
                                            <p v-text="item.news_countent"></p>
                                            <div class="tags clear">
                                                <span class="times" v-text="item.news_time"></span>
                                                <span class="writer" v-text="item.news_writer"></span>
                                            </div>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <div :class="{show:shows[1]}">
                                <div class="news_box">
                                <h4>
                                    <p><a href="">[ 电子竞技 ]</a></p>
                                    <a href="" title="PUBG全明星参赛队公开！7月17日起即可购票">PUBG全明星参赛队公开！7月17日起即可购票</a>
                                </h4>
                                <dl class="clear">
                                    <dt><a href="" title="PUBG全明星参赛队公开！7月17日起即可购票"><img class="scale_img" src="http://localhost:3020/image/index/201907161122065461.jpg" alt=""></a></dt>
                                    <dd>
                                        <p>8月9日至11日，备受期待的PUBG全明星赛将在韩国首尔的奖忠体育场将举行，共同争夺50万美元的奖金</p>
                                        <div class="tags clear">
                                            <span class="times">07-09</span>
                                            <span class="writer">覃文峰</span>
                                        </div>
                                    </dd>
                                </dl>
                                </div>
                            </div>
                            <div :class="{show:shows[2]}">
                                <div class="news_box">
                                    <h4>
                                        <p><a href="">[ 单机游戏 ]</a></p>
                                        <a href="" title="PUBG全明星参赛队公开！7月17日起即可购票">《GTA5》同时在线人数创2018年来新高 峰值13万人</a>
                                    </h4>
                                    <dl class="clear">
                                        <dt><a href="" title="《GTA5》同时在线人数创2018年来新高 峰值13万人"><img class="scale_img" src="http://localhost:3020/image/index/201907151159369371.jpg" alt=""></a></dt>
                                        <dd>
                                            <p>作为史上第二畅销的单体游戏（第一是《我的世界》），《GTA5》自发售以来一直热度不断，截止5月份《GTA5》还霸占着PS4和Xbox One两大家用主机北美销量...</p>
                                            <div class="tags clear">
                                                <span class="times">07-09</span>
                                                <span class="writer">覃文峰</span>
                                            </div>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <div :class="{show:shows[3]}">
                                <div class="news_box">
                                    <h4>
                                        <p><a href="">[ 八卦娱乐 ]</a></p>
                                        <a href="" title="Gamestop将与知名设计公司合作 对零售店进行革新">Gamestop将与知名设计公司合作 对零售店进行革新</a>
                                    </h4>
                                    <dl class="clear">
                                        <dt><a href="" title="Gamestop将与知名设计公司合作 对零售店进行革新"><img class="scale_img" src="http://localhost:3020/image/index/201907161530317961.jpg" alt=""></a></dt>
                                        <dd>
                                            <p>全球最大实体游戏零售商GameStop在近日的新闻发布会上宣布：未来将与设计公司R/GA展开合作，对零售店进行一番革新，从而大大提升玩家们的线下消费体验...</p>
                                            <div class="tags clear">
                                                <span class="times">07-09</span>
                                                <span class="writer">覃文峰</span>
                                            </div>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w400 float-right">
                        <div class="adbox2">
                            <a href="">
                                <img src="http://localhost:3020/image/index/5d1f17780507a.jpg" alt="">
                                <i></i>
                            </a>
                        </div>
                        <div class="rows mt-25">
                            <div class="title clear">
                                <h2>热门礼包</h2>
                                <em><a href="">更多</a></em>
                            </div>
                            <div class="lbpic">
                                <dl class="clear">
                                    <dt><img src="http://localhost:3020/image/index/201907101104066711.jpg" alt=""></dt>
                                    <dd class="lbtext">
                                        <h4>权力的游戏 </h4>
                                        <p>不删档礼包</p>
                                    </dd>
                                    <dd class="lbbut"><a href="" title="权力的游戏 凛冬将至">领取</a></dd>
                                </dl>
                                <dl class="clear">
                                    <dt><img src="http://localhost:3020/image/index/201907041117556561.jpg" alt=""></dt>
                                    <dd class="lbtext">
                                        <h4>天涯明月刀</h4>
                                        <p>媒体高级礼包</p>
                                    </dd>
                                    <dd class="lbbut"><a href="" title="天涯明月刀">领取</a></dd>
                                </dl>
                                <dl class="clear">
                                    <dt><img src="http://localhost:3020/image/index/201907011602546091.jpg" alt=""></dt>
                                    <dd class="lbtext">
                                        <h4>艾尔之光</h4>
                                        <p>2019新手礼包Ⅱ</p>
                                    </dd>
                                    <dd class="lbbut"><a href="" title="艾尔之光">领取</a></dd>
                                </dl>
                            </div>
                            <div class="lblist mt-15">
                                <dl class="clear">
                                    <dt>问道</dt>
                                    <dd class="lktext">经典荣耀超级礼包</dd>
                                    <dd class="lkbut"><a href="" title="问道">领卡</a></dd>
                                </dl>
                                <dl class="clear">
                                    <dt>蜀门手游</dt>
                                    <dd class="lktext">限定仙灵礼包</dd>
                                    <dd class="lkbut"><a href="" title="蜀门手游">领卡</a></dd>
                                </dl>
                                <dl class="clear">
                                    <dt>天下3</dt>
                                    <dd class="lktext">红尘惊梦新手卡</dd>
                                    <dd class="lkbut"><a href="" title="天下3">领卡</a></dd>
                                </dl>
                                <dl class="clear">
                                    <dt>非人学园</dt>
                                    <dd class="lktext">端午节礼包</dd>
                                    <dd class="lkbut"><a href="" title="非人学园">领卡</a></dd>
                                </dl>
                                <dl class="clear">
                                    <dt>剑网3</dt>
                                    <dd class="lktext">怒海争锋测试激活码</dd>
                                    <dd class="lkbut"><a href="" title="剑网3">领卡</a></dd>
                                </dl>
                            </div>
                        </div>
                        <div class="rows mt-25">
                            <div class="title clear">
                                <h2>热门活动</h2>
                                <em><a href="">更多</a></em>
                            </div>
                            <div class="clear hdpic">
                                <a href=""><img class="scale_img" src="http://localhost:3020/image/index/201907091557110781.jpg" alt=""/></a>
                                <a href=""><img class="scale_img" src="http://localhost:3020/image/index/201907051051334061.jpg" alt=""/></a>
                                <a href=""><img class="scale_img" src="http://localhost:3020/image/index/201907021200584371.jpg" alt=""/></a>
                                <a href=""><img class="scale_img" src="http://localhost:3020/image/index/201906271049530311.jpg" alt=""/></a>
                            </div>
                        </div>
                        <div class="rows mt-25">
                            <div class="title clear">
                                <h2>游久独家</h2>
                                <em><a href="">更多</a></em>
                            </div>
                            <div class="mt-10">
                                <div class="djbox">
                                    <div class="djpic">
                                        <a href="">
                                            <img class="scale_img" src="http://localhost:3020/image/index/201906121703482651.jpg" alt=""/>
                                            <i class="dj1">游戏文化</i>
                                        </a>
                                    </div>
                                    <ul>
                                        <li><a href=""> 跳《孤独之海》坑前所有你必须知道的事！</a></li>
                                        <li><a href="">跳《超级马里奥制造2》坑前所有你必须知道的事</a></li>
                                    </ul>
                                </div>
                                <div class="djbox">
                                    <div class="djpic">
                                        <a href="">
                                            <img class="scale_img" src="http://localhost:3020/image/index/201906261810246871.jpg" alt=""/>
                                            <i class="dj2">游戏文化</i>
                                        </a>
                                    </div>
                                    <ul>
                                        <li><a href="">跳《硬核机甲》坑前所有你必须知道的事！</a></li>
                                        <li><a href="">跳《沉没之城》坑前所有你必须知道的事！</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <officialnews/>
                    </div>
                </div>
            </div>
        </article>
        <my-footer></my-footer>
    </div>
</template>
<script>
import CarouselIndex from "../components/index/carousel-index.vue"
import esNews from "../components/index/esNews.vue"
import officialNews from "../components/index/officialNews.vue"
export default {
    data(){
        return {
            todatNews:[{default:""}],
            shows:[true,false,false,false],
            n:0,
            isOpen:[0,1,2,3],
            isFix:false,
            offsetTop:0,
        }
    },
    created(){
        this.loadMore();
    },
    mounted(){
        this.offsetT();
        window.addEventListener('scroll',()=>{
            var scrollTop=document.documentElement.scrollTop ||
                          document.body.scrollTop || 
                          window.pageYOffset;
            if(scrollTop>=1220&&scrollTop<=4811){
                this.isFix=true;
            }else{
                this.isFix=false;
            }
        }, true);
    },
    methods:{
        offsetT(){
            this.offsetTop=this.$refs.newstab.offsetTop;
            console.log(this.offsetTop)
        },
        change(e){
            this.n=Number(e.target.dataset.target);
            for(var i in this.shows){
                if(i==e.target.dataset.target){
                    // this.shows[i]=true 
                    this.$set(this.shows,i,true);
                }else{
                    // this.shows[i]=false 
                    this.$set(this.shows,i,false);
                }
            }
            console.log(this.shows)
        },
        loadMore(){
            this.axios.get("todaynews").then(res=>{
                this.todatNews=res.data;
            });
        }
    },
    components:{
        "carousel-index":CarouselIndex,
        "esnews":esNews,
        "officialnews":officialNews
    }
}
</script>
<style scoped>
.w-1200{
    width:1200px;
    margin:0 auto;
}
.w400{width:400px;}
.navbox,.subnav{width:1240px;margin:0 auto;}
.navbox{
    height:168px;
    padding:10px 20px 0;
}
.subnav{
    background:#fff3e7;
    padding:8px 20px 6px;
    height:38px;
    overflow: hidden;
}
.navbox dl{margin-bottom:0px;}
.navbox>dl>dt,.subnav>dl>dt{
    width:75px;height:23px;
    background:url("http://localhost:3020/image/header/navdt.png") 0 0 no-repeat;
    float:left;
    font-size:12px;color:#fff;
    line-height: 23px;text-indent: 11px;
    margin-right:13px;
    margin-top:4px;
}
.navbox>dl>dd,.subnav>dl>dd{
    width:1112px;
    float:left;
    margin-bottom:0px;
}
.navbox>dl>dd>a{
    display:inline-block;
    width:111px;height:31px;
    line-height:20px;
    float:left;
    padding:6px 0px 5px 10px;
    position:relative;
}
.subnav>dl>dd>a{
    display:inline-block;
    height:23px;
    line-height:23px;
    padding:0px 20px 0px 10px;
}
.navbox dl dd a+a::before{
    content:"";
    background:#acacac;
    width:1px;height:9px;
    position:absolute;
    left:0px;top:11px;
}
.navbox dl dd a i.h{
    display:inline-block;
    width:9px;height:9px;
    background:url("http://localhost:3020/image/header/ico_hot.png") no-repeat;
    vertical-align:top;
    margin-left:3px;
}.navbox dl dd a i.n{
    display:inline-block;
    width:9px;height:9px;
    background:url("http://localhost:3020/image/header/ico_new.png") no-repeat;
    vertical-align:top;
    margin-left:3px;
}
.red{color:#ea0000;}
.first::before{display:none;}
.subnav>dl>dd>a>p{
    display:inline-block;
    background:#ff7f00;
    height:12px;
    font-size:12px;font-family:宋体;
    vertical-align: middle;
    line-height: 12px;
    color:#fff;
    padding:0px 4px;
    margin-left:4px;
    border-radius:6px;
    margin-bottom: 0px;
}
.navbox>dl>.dt_2{background-position:0px -31px;}
.navbox>dl>.dt_3{background-position:0px -62px;}
.subnav>dl>dt{
    margin:0px 13px 0px 0px;
    background-position:0px -93px;
}
.index_tittle>.carousel{
    position:relative;
    width:770px;
}
.scale_img{
    transition:all .5s ease-out;
}
a:hover .scale_img{transform: scale(1.1);}
.index_tittle>.carousel>.carousel-inner>.carousel-item>a>span{
    width:770px;height:130px;
    background:url("http://localhost:3020/image/index/png.png") repeat-x;
    font-size: 28px;font-family: 微软雅黑;
    line-height: 50px;text-indent: 18px;
    color:#fff;
    padding-top: 70px;
    position:absolute;
    bottom:0px;left:0px;
}
.carousel-indicators .active{
    background:#f3591b;
    width:30px;
}
.index_tittle_ind{
    position:absolute;
    width:200px;
    bottom: 10px;right:0px;
}
.index_tittle_ind ul li{
    width:10px;height:10px;
    background:#8f8f8f;
}
.index_tittle_ind ul{
    margin:0px;
}
.hotnews{
    width:410px;
    text-align: center;
}
.hotnews h2{
    font-size:20px;
    font-weight: bold;
    margin-top:20px;
    margin-bottom:0px;
}
.hotnews h2 a{
    color:#ea0000;
}
.hotnews h3{
    font-size:14px;
    height:44px;
    line-height:44px;
    margin: 0px;
}
.hotnews h3 a{
    color:#666666;
}
.esports .w-1200{height:368px;}
.esports{
    background:url("http://localhost:3020/image/index/esbg.jpg") no-repeat;
}
.esbox{
    width:1200px;height:368px;
}
.estit{margin-top:40px;}
.estit h2{
    font-size: 30px;
    line-height: 32px;
    color:#333333;
    text-align:center;
    margin:0px;
}
.news{width:770px;}
.news_tab{
    height:47px;
    border-bottom:#e6e6e6 solid 1px;
    overflow: inherit;
}
.news_tit>a{
    float:left;
    width:80px;
    margin-right:60px;
    font-size:20px;
    color:#666666;
    line-height: 45px;
    text-align:center;
}
.news_tit>a.open{
    color:#f07800;
    border-bottom: 3px solid #f07800;
    font-weight: bold;
}
.newslist>div{display:none;}
.newslist>div.show{display:block;}
.news_tab em{margin-top: 8px;float:right}
.news_tab em a{
    width:110px;height:30px;
    background:#f07800;
    font-size:14px;color:#fff;
    text-align: center;
    line-height: 30px;
    border-radius: 15px;
    display: block;
}
.news_tab em a i{
    width:15px;height:16px;
    display: inline-block;
    background:url("http://localhost:3020/image/index/ico_em.png") no-repeat;
    vertical-align: middle;
    margin-right: 5px;
}
.newsFixed{
    position:fixed;
    left:50%;top:0;
    background:#f9f9f9;
    width:1200px;
    margin-left:-600px;
    z-index: 100;
}
.news_box{
    padding:13px 0 20px;
    border-bottom:1px solid #ebebeb;
}
.news_box h4{
    font-size:20px;
    line-height: 26px;
    font-weight: bold;
}
.news_box h4 .settop{
    width:54px;height:26px;
    background:#ff3300;
    color:#fff;
    text-align: center;
    line-height: 26px;
    display: inline-block;
    font-size: 15px;
    font-weight: lighter;
    margin-right: 20px;
}
.news_box h4 p{
    display: inline-block;
    font-size: 18px;
    line-height: 26px;
    font-weight:normal;
    margin-right: 20px;
}
.news_box h4 p a{
    color:#ff3300;
}
.news_box dl{
    height:112px;
    margin-top:15px;
    overflow: hidden;
}
.news_box dl dt{
    width:150px;height:112px;
    overflow: hidden;
    float: left;
    margin-right: 20px;
}
.news_box dl dt a img{
    width:150px;height:112px;
    display: block;
}

.news_box dl dd{
    width:600px;
    float: left;overflow: hidden;
}
.news_box dl dd p{
    font-size: 15px;
    line-height: 30px;
    color:#666;
    height:90px;
    overflow: hidden;
}
.news_box dl dd .tags{
    height:22px;
    overflow: hidden;
}
.news_box .tags .times{
    background: url("http://localhost:3020/image/index/ico_time.png") 0 center no-repeat;
}
.news_box .tags span{
    float: left;
    padding-left:20px;
    margin-right: 30px;
    color:#999999;
}
.news_sad{padding:20px 0;border-bottom: 1px solid #ebebeb;}
.news_sad a,.adbox2 a{
    width: 100%;
    position: relative;
}
.news_sad a img{
    width:770px;height:150px;
    border:none;
}
.news_sad a i,.adbox2 a i{
    width:22px;height:12px;
    background:url("http://localhost:3020/image/index/adico.png") no-repeat;
    position: absolute;
    right:5px;bottom:-50px;
}
.adbox2 a img{
    width:400px;height:140px;
}
.title{
    height:30px;
    overflow: hidden;
}
.title h2{
    float:left;
    font-size: 20px;line-height: 30px;
    color:#333;
    width:95px;
    position: relative;
    font-weight: bold;
}
.title h2::before{
    content:"";
    width:200px;height:1px;
    background:#e6e6e6;
    position:absolute;
    left:166px;top:14.5px;
}
.title h2::after{
    content: "";
    width:70px;height:3px;
    background:#f07800;
    position: absolute;
    left:95px;top:13.5px;
}
.title em{
    float:right;
    line-height:30px;
}
.title em a{color:#999;}
.lbpic dl{
    height:60px;
    margin-top:16px;
    background:#fff;
}
.lbpic dl dt{
    width:100px;
    float: left;
}
.lbpic dl dt img{
    width:100px;height:60px;
}
.lbpic dl .lbtext{
    width:220px;
    padding:5px 10px;
    float: left;
}
.lbpic dl .lbtext h4{
    font-size:17px;
    line-height: 30px;
}
.lbpic dl .lbtext p{
    line-height: 20px;
    color:#999;
    display: block;
}
.lbpic dl .lbbut{
    width:80px;
    float: left;
}
.lbpic dl .lbbut a{
    width:78px;height:58px;
    border:1px solid #dedede;
    display: block;
    line-height: 58px;
    text-align: center;
    font-size: 16px;
    transition: all .3s;
}
.lbpic dl .lbbut a:hover{
    border:1px solid #f07800;
    color:#f07800;
}
.lblist dl{
    background:url("http://localhost:3020/image/index/lblistbg.png") 114px -36px no-repeat;
    cursor:pointer;
}
.lblist dl:hover{
    background:url("http://localhost:3020/image/index/lblistbg.png") 114px 0px no-repeat
}
.lblist dl:hover dt{color:#f07800;}
.lblist dt{
    width:114px;float:left;
    font-size:16px;line-height:36px;
    color:#555555;
    margin-right: 9px;
    font-weight: normal;
}
.lblist .lktext{
    width:213px;height:36px;
    float:left;
    padding:0px 20px 0px 28px;
    overflow: hidden;
    font-size: 15px;line-height: 36px;
    color:#999999;
}
.lblist .lkbut{
    float:right;
    width:64px;
    margin-top:5px;
}
.lblist .lkbut a{
    width:62px;height:24px;
    border:1px solid #dedede;
    display: block;
    line-height: 24px;text-align: center;
    border-radius: 12px;
    background:#fff;
    font-size: 14px;
    transition: all .3s;
}
.lblist .lkbut a:hover{
    border:1px solid #f07800;
    color:#f07800;
}
.hdpic{
    width:412px;
    overflow: hidden;
}
.hdpic a{
    width:194px;height:90px;
    float:left;overflow: hidden;
    margin:14px 12px 0 0;
    position: relative;
}
.hdpic a img{width:194px;height:90px;}
.djbox{margin-top:6px;}
.djpic a{
    width:400px;height:90px;
    display:block;
    position: relative;
    overflow: hidden;
}
.djpic a img{width:400px;height:90px;}
.djpic a i{
    width:66px;height:24px;
    position: absolute;
    line-height: 24px;
    color:#fff;
    text-align: center;
    top:0px;right:0px;
}
.djpic a .dj1{background:#e9707f;}
.djpic a .dj2{background:#58aafe;}
.djbox ul{
    height:74px;
    border:1px solid #f2f2f2;
    background:#fff;
    padding:12px 10px 13px 15px;
}
.djbox ul li{
    line-height: 24px;
    background:url("http://localhost:3020/image/index/li.png") 0 center no-repeat;
    padding-left: 15px;
}
</style>
