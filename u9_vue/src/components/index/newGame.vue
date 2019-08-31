<template>
    <div>
        <div class="newgame mt-25">
            <div class="newgame_tit">
                <h2>新游推荐</h2>
            </div>
            <div class="mt-20 clear con">
                <div class="gamebox" v-for="(item,i) of ngList" :key="i" :class="{right:canRight[i]}" @mouseenter="doRight(i)">
                    <a href="javascript:;">
                        <li v-text="item.ng_scr"></li>
                        <div class="gamepic">
                            <img class="scale_img" :src="'http://localhost:3020/image/index/'+item.ng_pic" alt="">
                            <div class="game_png">
                                <h4 v-text="item.ng_tit"></h4>
                                <p v-text="item.ng_pla"></p>
                            </div>
                        </div>
                        <div class="gameintro">
                            <h3>/ 优缺点 /</h3>
                            <span  v-text="item.ng_vir"></span>
                            <p v-text="item.ng_drwo"></p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>    
</template>
<script>
export default {
    data(){
        return {
            ngList:[""],
            canRight:[]
        }
    },
    created() {
        this.loadmore()
        setTimeout(function(){console.log(11111)},5000);
    },
    methods: {
        doRight(i){
            for(var j in this.canRight){
                this.canRight[j]="";
            }
            this.$set(this.canRight,i,true);
        },
        loadmore(){
            this.axios.get("newgame").then(res=>{
                this.ngList=res.data;
                for(var i in this.ngList){
                    this.canRight.push('');
                }
                this.canRight[0]=true;
            }).catch(err=>{
                console.log(err)
            });
        }
    },
}
</script>
<style scoped>
/*新游推荐*/
/*标题*/ 
div.newgame>div.newgame_tit{
    width:1200px;
    margin:0 auto;
    height:30px;
    overflow: hidden;
}
div.newgame>div.newgame_tit h2{
    float: left;
    width:132px;height:30px;
    line-height: 30px;
    font-size:28px;
    position: relative;
}
div.newgame>div.newgame_tit h2:before{
    content:"";
    width:954px;height:1px;
    background: #e6e6e6;
    position: absolute;
    left:246px;top:14.5px;
}
div.newgame>div.newgame_tit h2:after{
    content: "";
    width:113px;height:3px;
    background: #333333;
    border-right:1px solid #fff;
    position: absolute;
    left:132px;top:13.5px;
}
/*新游展示区*/
div.newgame>div.con{
    width:1206px;
    margin:20px auto 0;
    overflow: hidden;
}
div.newgame>div.con>div.gamebox{
    margin-right:11px;
    float: left;
    width:176px;height:247px;
    padding:3px 0 0 3px;
    transition: all 1s;
    position: relative;
    overflow: hidden;
}
div.newgame>div.con>div.right{
    width:443px;
}
div.gamebox a li{
    width:50px;height:36px;
    background: #58aafe;
    text-align: center;
    line-height: 36px;
    position: absolute;
    top:0;left:0;
    font-size:24px;
    color:#fff;
    font-family: Impact;
    z-index: 100;
}
div.newgame>div.con>div.gamebox a div.gamepic{
    width:176px;height:244px;
    float: left;
    overflow: hidden;
}
div.newgame>div.con>div.gamebox a div.gamepic img{
    width:176px;height:244px;
    display: block;
}
div.newgame>div.con>div.gamebox a div.gamepic>div.game_png{
    width:176px;height:131px;
    background: url("http://localhost:3020/image/index/png.png") 0 0 no-repeat;
    position: absolute;
    left:3px;bottom:0;
    padding:53px 14px 18px 14px;
}
div.newgame>div.con>div.gamebox a div.gamepic>div.game_png h4{
    font-size:18px;
    line-height: 30px;
    color:#fffefe;
    font-weight: bold;
}
div.newgame>div.con>div.gamebox a div.gamepic>div.game_png p{
    font-size: 14px;
    line-height: 30px;
    color:#999999;
}
div.newgame>div.con>div.gamebox a>div.gameintro{
    width:264px;height:244px;
    border:1px solid #f2f2f2;
    border-left:none;
    background: #fff;
    padding:20px 30px;
    position: absolute;
    left:179px;top:3px;
}
div.newgame>div.con>div.gamebox a >div.gameintro h3{
    text-align: center;
    font-size: 18px;
    line-height: 30px;
}
div.newgame>div.con>div.gamebox a >div.gameintro span{
    font-size:15px;
    line-height: 24px;
    color:#666666;
    padding:10px 0;
    display: block;
}
div.newgame>div.con>div.gamebox a >div.gameintro p{
    font-size:15px;
    line-height: 24px;
    color:#999999;
    border-top:1px solid #ebebeb;
    padding-top:10px;
}
</style>
