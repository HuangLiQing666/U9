<template>
    <div>
        <div class="rows mt-25" id="#multipleColumn" @mouseover="news(-1)" @mouseout="news(1)">
            <div class="title clear">
                <ul id="title_tabs">
                    <li v-for="(item,i) of titList" :key="i" @mouseenter="change(item)" :class="{synews_open:isOpen==item}"></li>
                </ul>
                <h2>官方新闻</h2>
            </div>
            <div class="bd">
                <div class="bd_tempWrap">
                    <div id="rdbox" :style="{marginLeft:left}" :class="{on:isOn}">
                        <div class="bd_con">
                            <div class="hidpic clear">
                                <a href="javascript:;" v-for="(item,i) of newsPic" :key="i">
                                    <img :src="'http://localhost:3020/image/index/'+item.ofc_pic" alt="">
                                    <i></i>
                                </a>
                            </div>
                            <ul class="synews mt-20">
                                <li v-for="(item,i) of firNews" :key="i"><a :title="item.ofc_news" href="" v-text="item.ofc_news"></a></li>
                            </ul>
                        </div>
                        <div class="bd_con">
                            <ul class="synews">
                                <li v-for="(item,i) of secNews" :key="i"><a href="" v-text="item.ofc_news" :title="item.ofc_news"></a></li>
                            </ul>
                        </div>
                        <div class="bd_con">
                            <ul class="synews">
                                <li v-for="(item,i) of lasNews" :key="i"><a href="" v-text="item.ofc_news" :title="item.ofc_news"></a></li>
                            </ul>
                        </div>
                        <div class="bd_con clone">
                            <div class="hidpic clear">
                                <a href="javascript:;" v-for="(item,i) of newsPic" :key="i">
                                    <img :src="'http://localhost:3020/image/index/'+item.ofc_pic" alt="">
                                    <i></i>
                                </a>
                            </div>
                            <ul class="synews mt-20">
                                <li v-for="(item,i) of firNews" :key="i"><a :title="item.ofc_news" href="" v-text="item.ofc_news"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            newsPic:[],
            firNews:[],
            secNews:[],
            lasNews:[],
            left:0,
            isOn:true,
            isCar:true,
            titList:[1,2,3],
            isOpen:1
        }
    },
    created(){
        this.loadMore()
    },
    mounted(){
        // var timer=setInterval(()=>{this.newsCarousel()},2000);
        this.newsCarousel();
        // multipleColumn.addEventListener("mouseout",()=>{
        //     setInterval
        // });
    },
    methods:{
        news(n){
            if(n==-1){
                this.isCar=false;
            }else{
                this.isCar=true;
                this.newsCarousel();
            }
        },
        change(l){
            this.newsCarousel(l)
        },
        newsCarousel(to){
            var WIDTH=400;
            var i=0;
            var timer=setInterval(()=>{
                if(!this.isCar){
                    clearInterval(timer);
                }
                this.isOn=true;
                if(to==undefined){
                    i++;
                }else{
                    i=to;
                }
                if(i==3){
                    i=0;
                    setTimeout(()=>{
                        this.isOn=false;
                        this.left=0;
                    },500);
                }
                this.left=-WIDTH*i+"px";
                // setTimeout(()=>{
                       this.isOpen=i+1;
                    // },500);
            },2000)
        },
        loadMore(){
            this.axios.get("synews").then(res=>{
                var n=res.data;
                for(var i in n){
                    switch(true){
                        case i<=3:this.newsPic.push(n[i]);
                        case i<=4:this.firNews.push(n[i]);
                        break;
                        case 4<i&&i<=16:this.secNews.push(n[i]);
                        break;
                        case 16<i:this.lasNews.push(n[i]);
                        break;
                    }
                }
            })
        }
    }
}
</script>
<style scoped>
ul#title_tabs>li.synews_open{
    width:14px;
    background:#f07800;
    border-radius:5px;
}
#multipleColumn{
    width:400px;
}
#rdbox{
    width:2000px;
    overflow: hidden;
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
ul#title_tabs{
    float: right;
    width:41px;height:6px;
    background: #f9f9f9;
    margin-top: 12px;
    overflow: hidden;
    list-style: none;
}
ul#title_tabs li{
    float: left;
    width:6px;height:6px;
    background: #cccccc;
    overflow: hidden;
    margin-right: 5px;
    cursor: pointer;
    border-radius:50%;
}
#multipleColumn>.title h2::before{
    width: 178px;
}
div.bd_tempWrap{
    width: 400px;
    position: relative;
    overflow: hidden;
}
div.hidpic{width:412px;overflow: hidden;}
div.hidpic a{
    width:194px;height:90px;
    float: left;
    overflow: hidden;
    margin:14px 12px 0 0;
    position: relative;
}
div.hidpic>a img{
    width:194px;height:90px;
    display: block; 
}
div.hidpic>a i{
    width:30px;height:30px;
    background:url("http://localhost:3020/image/index/v.png") 0 0 no-repeat;
    background-size:30px 30px;
    position: absolute;
    left: 82px;top:30px; 
}
div.bd>.bd_tempWrap>#rdbox>div.bd_con{
    float: left;
    width:400px;
}
ul.synews li{
    height:36px;
    font-size:16px;
    line-height: 36px;
    background: url("http://localhost:3020/image/index/lblistbg.png") 6px -36px no-repeat;
    padding-left: 30px;
    overflow: hidden;
}
ul.synews>li:hover{
    background: url("http://localhost:3020/image/index/lblistbg.png") 6px 0 no-repeat;
}
ul.synews>li a{color:#555;}
</style>