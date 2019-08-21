<template>
    <div>
        <p>{{num[0]}}</p>
        <p>{{num[1]}}</p>
        <p>{{num[2]}}</p>
        <button @click="change">切换</button>
    </div>
</template>
<script>
export default {
    data(){
        return {
            num:["上","中","下"],
            str:0
        }
    },
    methods:{
        change(){
            this.$store.commit('setUid',5)
            var uid=this.$store.getters.getUid;
            console.log(uid)
            // this.str=1;
            //  this.$set(this.num,0,"一")
            // this.num[0]="一";
            // console.log(this.num)
        }
    }
}
</script>
