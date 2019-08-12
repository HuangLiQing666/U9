<template>
    <div>
        <div class="slideBox mt-20">
            <a class="esPrev" href="javascript:;" @click="prev"></a>
            <div class="tempWrap">
                <ul id="endGames" class="d-flex list-inline" :style="{marginLeft:left}" :class="isOn?'on':''">
                    <li v-for="(item,i) of esList" :key="i">
                        <div class="eventbox">
                            <div class="estop" v-text="item.esnews_top"></div>
                            <div class="estt" v-text="item.esnews_tit"></div>
                            <div class="absbox clear">
                                <div class="abs float-left">
                                    <div class="absimg"><img :src="'http://localhost:3020/image/index/'+item.esnews_left_pic
                                    " alt=""></div>
                                    <p v-text="item.esnews_left_team"></p>
                                </div>
                                <div class="abs_tit float-left">
                                    <h4 v-text="item.esnews_score"></h4>
                                    <div class="es_starting" :class="item.esnews_start==1?'starting':'ending'">{{item.esnews_start==1?"尚未开始":"已经结束"}}</div>
                                </div>
                                <div class="abs float-right">
                                    <div class="absimg"><img :src="'http://localhost:3020/image/index/'+item.esnews_right_pic
                                    "  alt=""></div>
                                    <p v-text="item.esnews_left_team">IG</p>
                                </div>
                            </div>
                            <div class="es_other clear mt-20">
                                <div class="es_time" v-text="item.esnews_time"></div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a class="esNext" href="javascript:;" @click="next"></a>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            esList:[{default:""}],
            left:"-294px",
            i:1,
            isOn:true,
            isClick:true
        }
    },
    created(){
        this.loadMore();
    },
    methods:{
        next(){
           if(this.isClick){
                this.moveTo(1)
            }
            this.isClick=false;
        },
        prev(){
            if(this.isClick){
                this.moveTo(-1)
            }
            this.isClick=false;
        },
        moveTo(n){
            setTimeout(()=>{this.isClick=true},500);
            this.isOn=true;
            this.i+=n;
            var LIWIDTH=294;
            if(this.i==0){
                setTimeout(()=>{
                    this.isOn=false;
                    this.i=8;
                    this.left=-LIWIDTH*this.i+"px";
                },500);
            }
            if(this.i==9){
                setTimeout(()=>{
                    this.isOn=false;
                    this.i=1;
                    this.left=-LIWIDTH*this.i+"px";
                },500);
            }
            this.left=-LIWIDTH*this.i+"px";
        },
        loadMore(){
            this.axios.get("esnews").then(res=>{
                var esList=res.data;
                esList.unshift(esList[esList.length-1]);
                esList.push(esList[1],esList[2],esList[3],esList[4],);
                this.esList=esList;
                console.log(this.esList)
            });
        }
    }
}
</script>
<style scoped>
.tempWrap,ul#endGames{
    overflow: hidden;
    position: relative;
}
.tempWrap{width:1176px;}
ul#endGames{
    width:3822px;
    position: relative;
}
#endGames.transition{transition: all .5s;}
div.slideBox{
    width:1176px;
    position: relative;
    height:228px;
    overflow: hidden;
}
div.slideBox>a.esPrev,div.slideBox>a.esNext{
    position: absolute;
    left:0;top:88px;
    display: block;
    width:60px;height:60px;
    background:url("http://localhost:3020/image/index/slideGroup.png") 0 0 no-repeat;
    z-index: 100;
}
div.slideBox>a.esNext{
    left:auto;right:5px;
    background:url("http://localhost:3020/image/index/slideGroup.png") -60px 0 no-repeat;
}
.tempWrap>ul#endGames li{
    margin-left:14px;
}
.eventbox{
    width:280px;height:228px;
    background:#fff url("http://localhost:3020/image/index/bszt.png") no-repeat;
}
.absbox{width:280px;padding:0 20px;}
.abs{width:64px;}
.abs>p{text-align: center}
.absimg{padding:5px;}
.absimg>img{
    display: block;
    width:100%;
}
.abs_tit{
    width:112px;
    text-align: center;
}
.abs_tit h4{
    font-size: 36px;
    line-height: 64px;
    font-weight: bold;
    color:#333;
}
.abs_tit .es_starting{
    width:78px;height:24px;
    margin:4px auto 0px;
    font-size: 12px;
    color:#222222;
    line-height:24px;
    text-align: center;
    border-radius:15px;
}
.abs_tit .ending{
    background:#c9c9c9;
}
.abs_tit .starting{
    background: #ff8a16;
    color:#fff;
}
.eventbox .estop{
    color:#222;
    line-height: 22px;font-size:12px;
    text-align: center;
}
.eventbox .estt{
    font-size:18px;
    line-height: 56px;
    height:56px;
    color:#333;
    text-align: center;
}
.es_other{
    height:40px;
    border-top:#f2f2f2 solid 1px;
}
.es_time{
    font-size:14px;
    line-height: 40px;
    text-align: center;
    color:#999999;
}
</style>
