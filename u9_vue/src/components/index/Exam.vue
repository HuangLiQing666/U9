<template>
    <div>
        <p ref="p1">{{n}}</p>
        <p>{{n}}</p>
        <p>{{n}}</p>
        <button @click="change">go</button>
    </div>
</template>
<script>
export default {
    data(){
        return {
            n:1,
        }
    },
    methods:{
        one(){
            this.n=2;
            console.log("one")
        },
        two(){
            this.n=2;
            console.log("two")
        },
        three(){
            this.n=2;
            console.log("three")
        },
        change(){
            this.one();
            this.two();
            this.three();
            console.log(this.$refs.p1.textContent)
        }
    }
}
</script>
