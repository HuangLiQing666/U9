<template>
    <div>
        <div id="index_head_carousel" @mouseenter="mouse(1)" @mouseleave="mouse(-1)">
            <div class="hd">
                <ul id="carousel_pic" :style="{marginLeft:left}" :class="isOn?'on':''">
                    <li v-for="(item,i) of carList" :key="i">
                        <img :src="'http://localhost:3020/image/index/'+item.carousel_pic
                        " alt="">
                        <span>{{item.carousel_tit}}</span>
                    </li>
                    <li>
                        <img :src="'http://localhost:3020/image/index/'+carList[0].carousel_pic" alt="">
                        <span>{{carList[0].carousel_tit}}</span>
                    </li>
                </ul>
            </div>
            <div class="bd">
                <ul class="carousel_nav">
                    <li v-for="(item,i) of carList" :key="i" :class="i==isActive?'active':''" @click="change(i)"></li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
import { setInterval, setTimeout, clearInterval } from 'timers';
export default {
    data(){
        return {
            carList:[{default:""}],
            left:0,
            i:0,
            isOn:true,
            isActive:0,
            canMove:true,
        }
    },
    created(){
        // 页面数据
        this.loadMore();
    },
    mounted(){
        this.moveTo();
    },
    methods:{
        mouse(n){
            if(n==1){
                this.canMove=false;
            }else{
                setTimeout(()=>{
                    if(!this.canMove){
                        this.canMove=true;
                        this.moveTo();
                    }
                },2000)
            }
        },
        change(l){
            this.canMove=false;
            this.move(l)
            setTimeout(()=>{
                if(!this.canMove){
                    this.canMove=true;
                    this.moveTo();
                }
            },2000)
        },
        moveTo(){
            var timer=()=>{
                setTimeout(()=>{
                    if(this.canMove){
                        this.move()
                        timer()
                    }else{
                        clearTimeout(this.timer)
                        timer=null;
                    }
                },2000)
            }
            timer()
        },
        move(to){
            if(to==undefined){
                this.i++; 
            }else{
                this.i=to;
            }
            var LIWIDTH=770;
            this.isOn=true;
            this.left=-LIWIDTH*this.i+'px';
            if(this.i==6){
                this.i=0;
                setTimeout(()=>{
                    this.isOn=false;
                    this.left=0;
                },500)
            }
            this.isActive=this.i;
        },
        // 页面数据
        loadMore(){
            this.axios.get("/carindex").then(res=>{
                this.carList=res.data;
                console.log(this.carList)
            });
        }
    },
    watch:{
       
    }
}
</script>
<style scoped>
/* 轮播图片 */
#index_head_carousel{
    width:770px;height:280px;
    overflow: hidden;
    position: relative;
}
#index_head_carousel>div.hd>#carousel_pic{
    width:5390px;
    display: flex;
    overflow: hidden;
}
#index_head_carousel>div.hd>#carousel_pic>li{
    display: flex;
    position: relative;
}
#index_head_carousel>div.hd>#carousel_pic>li>span{
    width:770px;height:130px;
    background:url("http://localhost:3020/image/index/png.png") repeat-x;
    font-size: 28px;font-family: 微软雅黑;
    line-height: 50px;text-indent: 18px;
    color:#fff;
    padding-top: 70px;
    position:absolute;
    bottom:0px;left:0px;
}
#carousel_pic.on{
    transition:all 0.5s;
}
/* 轮播导航 */
#index_head_carousel>div.bd{
    height:8px;
    position: absolute;
    z-index: 4;
    bottom: 25px;
    right:22px;
    overflow: hidden;
}
#index_head_carousel>div.bd>ul.carousel_nav{
    float:right;
    overflow: hidden;
}
#index_head_carousel>div.bd>ul.carousel_nav>li{
    float:left;
    margin-right:6px;
    width:8px;height:8px;
    line-height: 8px;
    text-align: center;
    color:#525252;
    background: #8f8f8f;
    overflow: hidden;
    text-decoration:none;
}
#index_head_carousel>div.bd>ul.carousel_nav>li.active{
    background:#f3591b;
    width:30px;
}
</style>

