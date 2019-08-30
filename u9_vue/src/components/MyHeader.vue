<template>
    <div>
        <div class="login_mengban" :class="{canLogin:isShow}"></div>
        <div class="login_box" :class="{canLogin:isLogin}">
            <div class="login_tit">
                <h2>登录</h2>
                <em @click="loginClose(1)" class="tit_closed"></em>
            </div>
            <div class="login_con">
                <div class="form_group mt-10">
                    <div class="signup_group">
                        <input type="text" placeholder="请输入手机号/账号" class="input_text" id="login_uname">
                    </div>
                </div>
                <div class="form_group mt-10">
                    <div class="signup_group">
                        <input type="password" placeholder="密码" class="input_text" id="login_upwd">
                    </div>
                </div>
                <div class="form_group mt-10">
                    <button type="submit" class="login_btn" @click="loginUp">登录</button>
                </div>
                <p class="view_clause">
                    <em><a href="javascript:;" class="move_lost">忘记密码?</a></em>
                    还没有账号?
                    <a href="javascript:;" class="move_signup" @click="login(-1)">立即注册</a>
                </p>
                <div class="other_login">
                    <h3 class="mt-15">其他账号登录</h3>
                    <ul class="sj_login">
                        <li><a href="javascript:;" class="ico_qq"></a></li>
                        <li><a href="javascript:;" class="ico_wx"></a></li>
                        <li><a href="javascript:;" class="ico_wb"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="signup_box" :class="{canLogin:isSign}">
            <div class="login_tit">
                <h2>登录</h2>
                <em @click="loginClose(-1)" class="tit_closed"></em>
            </div>
            <div class="login_con">
                <div class="form_group mt-10">
                    <div class="signup_group">
                        <input type="text" placeholder="请输入手机号" class="input_text" @blur="canSignin(1)" id="sign_uname">
                        <span :class="{error:isErr[0]}">{{spCount[0]}}</span>
                    </div>
                </div>
                <div class="form_group mt-10 clear">
                    <div class="signup_group">
                        <input type="text" placeholder="请输入验证码" class="input_sryzm">
                        <input type="button" class="input_hqyzm" value="获取验证码">
                    </div>
                </div>
                <div class="form_group mt-10">
                    <div class="signup_group">
                        <input type="password" placeholder="请输入密码（字母和数字组合，6至12位）" class="input_text" @blur="canSignin(-1)" id="sign_upwd">
                        <span :class="{error:isErr[1]}">{{spCount[1]}}</span>
                    </div>
                </div>
                <div class="form_group mt-10">
                    <div class="signup_group check_box">
                        <input type="checkbox" class="signup_check" checked>
                        我已阅读并同意
                        <a href="javascript:;">用户协议</a>
                        和
                        <a href="javascript:;">隐私条款</a>
                    </div>
                </div>
                <div class="form_group mt-10">
                    <button type="submit" class="sign_btn" @click="signIn">注册</button>
                </div>
                <p class="view_clause">
                    已有账号马上
                    <a href="javascript:;" class="move_login" @click="login(1)">登录</a>
                </p>
                <div class="other_login">
                    <h3 class="mt-10">其他账号登录</h3>
                    <ul class="sj_login">
                        <li><a href="javascript:;" class="ico_qq"></a></li>
                        <li><a href="javascript:;" class="ico_wx"></a></li>
                        <li><a href="javascript:;" class="ico_wb"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 登录失败 注册失败 -->
        <transition name="promptFaile" key="pro1"> 
            <div class="login_prompt" v-if="loginErr">
                <div class="login_prompt_faile"></div>
                <h4 id="prompt_text">{{errCount}}</h4>
            </div>
        </transition>
        <!-- 注册成功 登录成功-->
        <transition name="promptSuc" key="pro2">
            <div class="sign_prompt" v-if="signSuc">
                <div class="login_prompt_suc"></div>
                <h4 id="prompt_text">{{sucCount}}</h4>
            </div>
        </transition>
        <!-- 登录成功 输入昵称 -->
        <div class="promptNic" v-if="nicName">
            <div class="tit_closed" @click="nicClose"></div>
            <div class="nic_tips">登录成功！请定昵称，名字越皮，越有味道！</div>
            <div class="nic_con">
                <div class="nic_input">
                    <input type="text" placeholder="欢迎来到游久网，给自己取一个独一无二的昵称吧！！" class="nic_input_text" id="nicText">
                    <p>请输入8-12个中文或英文字符，不允许使用特殊符号</p>
                </div>
                <div class="nic_button">
                    <button type="button" @click="setNic">确定</button>
                </div>
            </div>
        </div>
        <header id="header">
            <img src="http://localhost:3020/image/header/top_brank.jpg" alt="">
            <div class="header">
                <div class="header_navigation">
                    <div class="header_tittle float-left py-2">
                        <ul class="nav">
                            <li class="nav-item"><a href="javascript:;" class="header_icon1 nav-link py-0">游久网</a></li>
                            <li class="nav-item"><a href="javascript:;" class="header_icon2 nav-link py-0">游戏商城</a></li>
                            <li class="nav-item"><a href="javascript:;" class="header_icon3 nav-link py-0">游久直播</a></li>
                            <li class="nav-item"><a href="javascript:;" class="header_icon4 nav-link py-0">中国电竞价值榜</a></li>
                        </ul>
                    </div>
                    <div class="header_news py-2 float-left">
                        <a href="">5月份市场数据：《堡垒之夜》《PUBG》热度不减</a>
                    </div>
                    <div class="header_other py-2 float-right">
                        <a href="javascript:;">官方微博</a>
                        <a href="javascript:;">设为首页</a>
                        <a href="javascript:;">加入收藏</a>
                    </div>
                    <div v-if="nameShow" key="sucess" class="login_in">
                        <div class="user_name" @mouseover="ulShow(1)" @mouseout="ulShow(-1)">
                            <a href="javascript:;">
                                <img src="http://localhost:3020/image/header/middle.gif" alt="">
                                <span>{{userName}}</span>
                            </a>
                            <ul class="user_drop" :style="{display:isBlock?'block':'none'}">
                                <li><a href="javascript:;">账号设置</a></li>
                                <li><a href="javascript:;">修改密码</a></li>
                                <li><a href="javascript:;">我的足迹</a></li>
                                <li><a href="javascript:;">我的评论</a></li>
                            </ul>
                        </div>
                        <em  class="user_out"><a href="javascript:;" @click="logOut">退出</a></em>
                    </div>
                    <div class="header_reg_login py-2 text-right float-right" v-else key="faile">
                        <a href="javascript:;"  @click="login(1)">登录</a>
                        <a href="javascript:;" @click="login(-1)">注册</a>
                    </div>
                </div>
                <div class="header_top clear clearfix">
                    <div class="header_logo float-left"><a href=""><img src="http://localhost:3020/image/logo.png" alt=""></a></div>
                    <div class="searchbox float-right">
                        <div class="formbox">
                            <input class="clear textbox" type="text" placeholder="手游">
                        </div>
                        <div class="keywords">
                            <span>热搜:</span>
                            <a href="">绝地求生助手</a>
                            <a href="">LOL</a>
                            <a href="">无限法则</a>
                            <a href="">星际争霸2</a>
                        </div>
                    </div>
                </div>
                <div class="header_navtop">
                    <ul class="nav justify-content-around py-2">
                        <li class="nav-item"><a href="javascript:;" class="nav-link">新闻中心</a></li>
                        <li class="nav-item"><a href="" class="nav-link">电竞中心</a></li>
                        <li class="nav-item"><a href="" class="nav-link">电玩频道</a></li>
                        <li class="nav-item"><a href="" class="nav-link">手游</a></li>
                        <li class="nav-item"><a href="" class="nav-link">发号</a></li>
                        <li class="nav-item"><a href="" class="nav-link">视频</a></li>
                        <li class="nav-item"><a href="" class="nav-link">活动</a></li>
                        <li class="nav-item"><a href="" class="nav-link">魔兽RPG</a></li>
                        <li class="nav-item"><a href="" class="nav-link">硬件外设</a></li>
                        <li class="nav-item"><a href="" class="nav-link">MOBA论坛</a></li>
                    </ul>
                </div>
            </div>
        </header>
    </div>
</template>
<script>
import { setTimeout } from 'timers';
export default {
    data(){
        return {
            isShow:true,    //背景是否显示
            isLogin:true,   //登录页面是否显示
            isSign:true,    //注册页面是否显示
            isErr:["",""],  //正则格式验证是否通过
            spCount:["",""],//正则格式验证提示内容
            loginErr:false, //登录注册失败
            signSuc:false,  //登录 注册成功
            nicName:false,  //设置昵称
            nameShow:false, //登录成功后显示用户名
            errCount:"",    //登录注册失败 提示内容
            sucCount:"",    //登录注册成功 提示内容
            userName:"",    //显示的用户名
            isBlock:false   //用户菜单栏是否显示
        }
    },
    created(){
        this.loadMore();
    },
    methods:{
        //用户菜单栏是否显示
        ulShow(n){
            if(n==1){
                this.isBlock=true;
            }else{
                this.isBlock=false;
            }
        },
        // 退出登录状态
        logOut(){
            this.axios.get("cleanUser").then(res=>{
                console.log(res.data.msg)
            }).catch(err=>{
                console.log(err)
            });
            this.loadMore();
        },
        // 添加昵称
        setNic(){
            var nicReg=/^[\w\u4e00-\u9fa5]{3,12}$/;
            if(nicReg.test(nicText.value)==false){
                this.errCount="请输入正确的昵称";
                this.loginErr=true;
                setTimeout(()=>{this.loginErr=false},2000);
                return;
            }
            this.axios.post("nicname",{
                nicname:nicText.value
            }).then(res=>{
                var code=res.data.code;
                var msg=res.data.msg;
                var nicname=res.data.nicname;
                if(code==1){
                    this.sucCount=msg;
                    this.signSuc=true;
                    this.isShow=true;
                    this.isLogin=true;
                    this.isSign=true;
                    this.nicName=false;
                    this.nameShow=true;
                    setTimeout(()=>{this.signSuc=false},2000);
                    this.userName=nicname;
                }
            }).catch(err=>{
                console.log(err)
            })
        },
        // 注册
        signIn(){
            var phoneReg=/^1[0-9]{10}$/;
            var upwdReg=/^(?=.*?[a-z)(?=.*>[A-Z])(?=.*?[0-9])[a-zA_Z0-9]{6,10}$/;
            var phone=sign_uname.value;
            var upwd=sign_upwd.value;
            if(sign_upwd.value==""||sign_uname.value==""){
                this.errCount="用户名或密码不能为空";
                this.loginErr=true;
                setTimeout(()=>{this.loginErr=false},2000);
                return;
            }else if(phoneReg.test(sign_uname.value)==false){
                this.errCount="手机号码格式不正确";
                this.loginErr=true;
                setTimeout(()=>{this.loginErr=false},2000);
                return;
            }else if(upwdReg.test(sign_upwd.value)==false){
                this.errCount="密码必须为字母数字组合";
                this.loginErr=true;
                setTimeout(()=>{this.loginErr=false},2000);
                return;
            }
            this.axios.post("signup",{
                phone,
                upwd
            }).then(res=>{
                var code=res.data.code;
                var msg=res.data.msg;
                if(code==1){
                    this.sucCount=msg;
                    this.signSuc=true;
                    this.nicName=true;
                    this.nameShow=true;
                    this.userName=phone;
                    var uid=res.data.uid
                    this.$store.commit('setUid',uid);
                    setTimeout(()=>{this.signSuc=false},2000);
                }else if(code==-2){
                    this.errCount=msg;
                    this.loginErr=true;
                    setTimeout(()=>{this.loginErr=false},2000);
                }
            }).catch(err=>{
                console.log(err);
            });
        },
        // 登录
        loginUp(){
            var uname=login_uname.value;
            var upwd=login_upwd.value;
            if(login_uname.value==""||login_upwd.value==""){
                this.errCount="用户名或密码不能为空";
                this.loginErr=true;
                setTimeout(()=>{this.loginErr=false},2000);
                return;
            }
            this.axios.post("loginup",{
                uname,
                upwd
            }).then(res=>{
                var code=res.data.code;
                var msg=res.data.msg;
                if(code==-1){
                    this.errCount=msg;
                    this.loginErr=true;
                    setTimeout(()=>{this.loginErr=false},2000);
                }else if(code==-2){
                    this.errCount=msg;
                    this.loginErr=true;
                    setTimeout(()=>{this.loginErr=false},2000);
                }else if(code==1){
                    this.sucCount=msg;
                    this.signSuc=true;
                    this.nameShow=true;
                    this.isShow=true;
                    this.isLogin=true;
                    var uid=res.data.uid
                    this.$store.commit('setUid',uid);
                    this.userName=res.data.nickName;
                    setTimeout(()=>{this.signSuc=false},2000);
                }else if(code==2){
                    this.nicName=true;
                    this.nameShow=true;
                    this.userName=uname;
                }
            }).catch(err=>{
                console.log(err);
            });
        },
        // 注册验证
        canSignin(n){
            var phoneReg=/^1[0-9]{10}$/;
            // var unameReg=/^[a-zA-Z0-9_-]{4,16}$/;
            var upwdReg=/^\w{6,12}$/;
            if(n==1){
                if(sign_uname.value==""){
                    this.$set(this.isErr,0,true)
                    this.$set(this.spCount,0,"手机号码不能为空");
                }else if(phoneReg.test(sign_uname.value)==false){
                    this.$set(this.isErr,0,true)
                    this.$set(this.spCount,0,"手机号码格式不正确")
                }else{
                    this.$set(this.isErr,0,false);
                    this.$set(this.spCount,0,"");
                }
            }else{
                if(sign_upwd.value==""){
                    this.$set(this.isErr,1,true);
                    this.$set(this.spCount,1,"请输入密码");
                }else if(upwdReg.test(sign_upwd.value)==false){
                    this.$set(this.isErr,1,true);
                    this.$set(this.spCount,1,"密码格式不规范");
                }else{
                    this.$set(this.isErr,1,false);
                    this.$set(this.spCount,1,"");
                }
            }
        },
        // 关闭的窗口
        loginClose(l){
            this.isShow=true;
            if(l==1){
                this.isLogin=true;
            }else if(l==-1){
                this.isSign=true;
            }
        },
        // 关闭昵称设置页面
        nicClose(){
            this.nicName=false;
        },
        // 登录页面或注册页面的开关
        login(n){
            this.isShow=false;
            if(n==1){
                this.isLogin=false;
                this.isSign=true;
            }else{
                this.isSign=false;
                this.isLogin=true;;
            }
        },
        loadMore(){
            this.axios.get("getUid").then(res=>{
                var code=res.data.code;
                var nickName=res.data.nickName;
                var uid=res.data.uid;
                if(code==1){
                    this.nameShow=true;
                    this.userName=nickName;
                    this.$store.commit('setUid',uid);
                }else if(code==-1){
                    this.nameShow=false;
                }else if(code==-2){
                    this.nicName=true;
                }
            }).catch(err=>{
                console.log(err);
            });
        }
    }
}
</script>
<style scoped>
span.error{
    color:#ff5758;
    line-height: 14px;
    background:url("http://localhost:3020/image/header/error-notic.png") 0 0 no-repeat;
    padding-left: 20px;
    display: block;
    margin-top:5px;
}
/* 登录页面 */
div.login_box{
    width:590px;height:400px;
    padding:0 0 0 250px;
    position: fixed;
    top:180px;left:50%;
    margin-left:-295px;
    z-index: 10001;
    background:url("http://localhost:3020/image/header/login_1.JPG") #fff left top no-repeat;
}
div.login_tit{
    height:55px;
    border-bottom:1px solid #ebebeb;
    padding:0 20px;
}
div.login_tit h2{
    float:left;
    font-size:20px;
    color:#333333;
    line-height: 55px;
}
.tit_closed{
    float: right;
    width:14px;height:14px;
    background: url("http://localhost:3020/image/header/closed.png") 0 0 no-repeat;
    display: block;
    overflow: hidden;
    margin-top: 20px;
    cursor:pointer;
}
div.login_con{
    padding:10px 30px 0 30px;
}
div.signup_group>.input_text{
    width:280px;height:42px;
    line-height: 42px;
    border:1px solid #dddddd;
    border-radius:5px;
    font-size:15px;
    color:#333333;
    padding-left: 12px;
}
.login_btn,.sign_btn{
    width:280px;height:48px;
    display: block;
    background: #ff7700;
    color:#fff;
    line-height: 48px;
    text-align: center;
    font-size:18px;
    border:none;
    margin-top:50px;
    border-radius:5px;
}
p.view_clause{
    line-height: 35px;
    color:#bcbcbc;
    font-size:14px;
    height:35px;
}
p.view_clause>em{
    float:right;
    display: inline-block;
}
p.view_clause>em>a{
    padding-left:3px;
}
p.view_clause>em>a.move_lost{
    color:#ff5758;
}
p.view_clause>.move_signup{
    color:#406599;
}
div.other_login>h3{
    width:280px;height:18px;
    text-align: center;
    background: url("http://localhost:3020/image/header/other-loginbg.png") 0 0 no-repeat;
    line-height: 18px;
    color:#bcbcbc;
    font-size:14px;
    
}
div.other_login>ul.sj_login{
    width:108px;
    margin:10px auto 0;
}
div.other_login>ul.sj_login li{
    width:26px;
    float: left;
    margin:0 5px;
}
div.other_login>ul.sj_login>li>a{
    width:26px;height:26px;
    display: block;
    background: url("http://localhost:3020/image/header/login_2.PNG") 0 0 no-repeat;
    overflow: hidden;
}
div.other_login>ul.sj_login>li>a.ico_qq{background-position: 0 0;}
div.other_login>ul.sj_login>li>a.ico_wx{background-position: -36px 0;}
div.other_login>ul.sj_login>li>a.ico_wb{background-position: -72px 0;}
/* 注册 */
div.signup_box{
    width:590px;height:456px;
    padding:0 0 20px 250px;
    position: fixed;
    top:180px;left:50%;
    margin-left:-295px;
    z-index: 10001;
    background:url("http://localhost:3020/image/header/signupbg.jpg") #fff left top no-repeat;
}
div.signup_group>.input_sryzm{
    width:165px;height:42px;
    float: left;
    display:block;
    border:1px solid #dddddd;
    text-indent: 12px;
    line-height: 42px;
    color:#333333;
    font-size:15px;
    border-radius:5px;
}
div.signup_group>.input_hqyzm{
    width:103px;height:40px;
    float: right;
    border-left:none;
    cursor: pointer;
    border:1px solid #18c26a;
    background: #1fd477;
    color:#fff;
    font-size:15px;
    border-radius:5px;
}
div.check_box{
    line-height: 20px;
    font-size:14px;
    color:#333333;
    margin-top: 15px;
}
div.check_box>.signup_check{
    margin-right:8px;
}
div.check_box>a{
    color:#406599;
}
p.view_clause>a{
    padding-left:3px;
}
p.view_clause>.move_login{
    color:#ff5758;
}
.sign_btn{
    margin-top:0;
}
/* 注册 登录 */
div.login_prompt,div.sign_prompt{
    width:250px;height:120px;
    position: fixed;
    background:rgba(0,0,0,0.5);
    z-index: 10002;
    top:280px;
    left:50%;
    margin-left:-90px;
    border-radius:10px;
    padding:18px 0;
}
.promptFaile-enter-active,.promptFaile-leave-active,.promptSuc-enter-active,.promptSuc-leave-active{
    transition: opacity 2s;
}
.promptFaile-enter,.promptFaile-leave-to,.promptSuc-enter,.promptSuc-leave-to{
    opacity: 0;
}
div.login_prompt_faile{
    width:32px;height:32px;
    background:url("http://localhost:3020/image/header/u9-ts-tipsx.png") 0 0 no-repeat;
    margin:0 auto;
}
div.login_prompt_suc{
    width:32px;height:32px;
    background:url("http://localhost:3020/image/header/u9-ts-tips.png") 0 0 no-repeat;
    margin:0 auto;
}
h4#prompt_text{
    font-size:18px;
    line-height: 36px;
    color:#fff;
    text-align: center;
}
/*设置昵称*/
 div.promptNic{
     width:480px;height:370px;
     background:url("http://localhost:3020/image/header/u9_tsbg.jpg") 0 0 no-repeat;
     position: fixed;
     top:180px;
     left:50%;
     margin-left:-235px;
     z-index:10001;
     padding:142px 16px 0 30px;
 }
div.promptNic>.tit_closed{
    position: absolute;
    right:26px;
    top:0;
}
div.promptNic>.nic_tips{
    height:32px;
    line-height:32px;
    background:url("http://localhost:3020/image/header/u9-ts-tips.png") 0 0 no-repeat;
    font-size:18px;
    color:#333333;
    padding-left:46px;
}
div.promptNic>.nic_con{
    padding:20px 34px 0 20px;
}
div.promptNic>div.nic_con>div.nic_input>.nic_input_text{
    width:370px;height:42px;
    display: block;
    background: #fff;
    border:1px solid #dddddd;
    text-indent:12px;
    line-height: 42px;
    color:#333333;
    font-size:15px;
    border-radius:5px;
}
div.promptNic>div.nic_con>div.nic_input>p{
    color:#bcbcbc;
    font-size:14px;
    line-height: 32px;
}
div.nic_button>button{
    width:368px;height:46px;
    display: block;
    background:#ff7700;
    color:#fff;
    line-height: 46px;
    text-align: center;
    font-size:18px;
    border:none;
    margin-top:15px;
    border-radius:5px;
}
/*登录、注册成功*/
ul.user_drop{
    position: absolute;
    left:0;top:33px;
    width:103px;
    padding:15px 0;
    background-color: #fff;
    border:1px solid rgba(0,0,0,0.15);
    border-radius: 4px;
    box-shadow: 0 6px 12px rgba(0,0,0,0.175);
    background-clip: padding-box; /*背景被裁剪到内边距框。*/
    z-index: 9999;
}
ul.user_drop li{
    font-size:14px;
    line-height: 30px;
    text-align: center;
    font-family: 宋体;
    display: block;
}
div.login_in{
    width:170px;height:37px;
    float: right;
    position: relative;
}
div.login_in>div.user_name{
    margin-top:5px;
    width:100px;
    float: left;
}
div.login_in>div.user_name>a>img{
    width:26px;height:26px;
    display: inline-block;
    border-radius: 50%;
    float:left;
    margin-right:5px;
}
div.login_in>div.user_name>a>span{
    font-size:14px;
    line-height: 26px;
    color:#333333;
    display: block;
    font-family: 宋体;
    width:69px;height:26px;
    overflow: hidden;
}
div.login_in>em.user_out{
    float:right;
    line-height: 37px;
}
.login_mengban{
    width:100%;height:100%;
    position: fixed;
    background:rgba(0,0,0,0.5);
    z-index:10000;
}
.canLogin{
    display: none;
}
.header{
    width:1240px;
    margin:0 auto;
}
.header_navigation,.header_tittle{
    height:40px;
}
.header_tittle>ul>li>a,.header_news a,.header_reg_login a,.header_other a,.header_navtop>ul>li>a
{
    font-size: 14px;
    color:#333;
}
.searchbox {
    width:300px;
    float:right;
    margin-top: 22px;
}
.formbox{
    width:300px;height:32px;
    border:1px solid #f6ae66;
    background:url("http://localhost:3020/image/header/search.png") 0 0 no-repeat;
}
.textbox{
    width:270px;height:32px;
    background: none;
    border:none;
    float: left;
    line-height: 32px;
    text-indent:10px;
    font-size: 14px;
    color:#999999;
}
.keywords{
    font-size:12px;
    line-height: 18px;
    padding-top: 6px;
}
.keywords a{ padding:0 5px;}
.header_top{
    width:1240px;height:100px;
}
.header_navtop{
    background:#fff;
    border-top:2px solid #EE7701;
    height:63px;
}
.header_icon1{
    background:url("http://localhost:3020/image/header/icon.png") no-repeat 0px 1px;
    padding-left:18px;
}
.header_icon2{
    background: url("http://localhost:3020/image/header/icon.png") no-repeat -85px 1px;
    padding-left:18px;
}
.header_icon3{
    background: url("http://localhost:3020/image/header/icon.png") no-repeat -202px 1px;
    padding-left:18px;
}
.header_icon4{
    background: url("http://localhost:3020/image/header/ico_rank.png") no-repeat 0px center;
    padding-left:18px;
    border-right:1px solid #aaa;
}
.header_news{
    padding-left: 20px;
}
 .header_news>a{
     background: url("http://localhost:3020/image/header/horn.png") no-repeat 0px center;
     padding-left:18px;
 }
   .header_other>a,.header_reg_login>a{
       padding:0 10px;
   }
   .header_top{
       background:url("http://localhost:3020/image/header/headbg.jpg") no-repeat center top;
   }
   .header_logo{
       margin-top:27px;
   }
   .header_search{
       margin-top:22px;
   }
   .header_navtop>ul>li>a{font-size: 18px;}
</style>
