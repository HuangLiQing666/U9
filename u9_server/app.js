//引入express模块(接收响应 发送请求)
const express=require('express');
const cors=require("cors");
const mysql=require("mysql");
const session=require("express-session");
var pool=mysql.createPool({
    host:'127.0.0.1',
    post:3306,
    user:'root',
    password:'',
    database:'u9',
    connectionLimit:20
});
//建库
var app=express();
app.use(cors({
    origin:["http://localhost:8080","http://127.0.0.1:8080"],
    credentials:true,
}));
app.use(session({
    secret:"128位字符串",
    resave:true,
    saveUninitialized:true
}));
app.listen(3020);
app.use(express.static('public'));
//不使用第三方qs模块 而是使用querystring模块

// 轮播图
app.get("/carindex",(req,res)=>{
    var sql="SELECT pid,carousel_tit,carousel_pic FROM u9_carousel_index_top";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            res.send("-1");
        }else{
            res.send(result);
        }
    });

});

/*电竞信息浏览框*/
app.get("/esnews",(req,res)=>{
    var sql="SELECT eid,esnews_top,esnews_tit,esnews_left_pic,esnews_right_pic,esnews_left_team,esnews_right_team,esnews_score,esnews_start,esnews_time FROM u9_index_esnews";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            res.send("-1");
        }else{
            res.send(result);
        }
    });
});

/* 每日新闻 */ 
app.get("/todaynews",(req,res)=>{
    var sql="SELECT nid,news_tit,news_countent,news_time,news_writer,news_pic FROM u9_index_todaynews";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            res.send("-1");
        }else{
            res.send(result);
        }
    });
});

/* 官方新闻 */ 
app.get("/synews",(req,res)=>{
    var sql="SELECT ofcid,ofc_news,ofc_pic FROM u9_index_synews";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            res.send("-1");
        }else{
            res.send(result);
        }
    });
});

/*登录验证*/ 
app.post("/loginup",(req,res)=>{
   var data="";
   req.on("data",function(chunk){
       data+=chunk;
   });
   req.on("end",function(){
        var params=JSON.parse(data);
        var uname=params.uname;
        var upwd=params.upwd;
        pool.query("SELECT uname From u9_user WHERE uname=?",[uname],(err,result)=>{
            if(err) throw err;
            if(result.length==0){
                res.send({code:-1,msg:"账号不存在"})
            }else{
                pool.query("SELECT uid,uname,upwd,nick_name From u9_user WHERE uname=? AND upwd=?",[uname,upwd],(err,result)=>{
                    if(err) throw err;
                    if(result.length==0){
                        res.send({code:-2,msg:"密码错误"});
                    }else{
                        req.session.uid=result[0].uid;
                        if(result[0].nick_name==''){
                            res.send({code:2,msg:"请设置昵称"})
                        }else{
                            res.send({code:1,msg:"欢迎回来",uid:result[0].uid,nickName:result[0].nick_name})
                        }
                    }
                });
            }
        });
    });
});

/*注册*/
app.post("/signup",(req,res)=>{
    var data="";
    req.on("data",function(chunk){
        data+=chunk;
    });
    req.on("end",function(){
        var params=JSON.parse(data);
        var phone=params.phone;
        var upwd=params.upwd;
        pool.query("SELECT uname From u9_user WHERE uname=?",[phone],(err,result)=>{
            if(err) throw err;
            if(result.length==0){
                pool.query("INSERT INTO u9_user VALUES (null,?,?,'')",[phone,upwd],(err,result)=>{
                    if(err) throw err;
                    if(result.affectedRows==0){
                        res.send({code:-1,msg:"注册失败"})
                    }else{
                        pool.query("SELECT uid FROM u9_user WHERE uname=?",[phone],(err,result)=>{
                            if(err) throw err;
                            var uid=result[0].uid
                            req.session.uid=uid;
                            res.send({code:1,msg:"注册成功",uid:uid});
                        });
                    }
                });
            }else{
                res.send({code:-2,msg:"账号已存在"})
            }
        });
    });
}); 

/*添加昵称*/ 
app.post("/nicname",(req,res)=>{
    var data="";
    var uid=req.session.uid;
    req.on("data",function(chunk){
        data+=chunk;
    });
    req.on("end",function(){
        var params=JSON.parse(data);
        var nicname=params.nicname;
        var sql="SELECT nick_name FROM u9_user WHERE nick_name=?";
        pool.query(sql,[nicname],(err,result)=>{
            if(err) throw err;
            if(result.length==0){
                pool.query("UPDATE u9_user SET nick_name=? WHERE uid=?",[nicname,uid],(err,result)=>{
                    if(err) throw err;
                    if(result.affectedRows==1){
                        res.send({code:1,msg:"设置成功",nicname:nicname});
                    }else{
                        res.send({code:-2,msg:"修改失败"})
                    }
                });
            }else{
                res.send({code:-1,msg:"昵称已存在,请修改"})
            }
        });
    });
});
// 获取当前登录状态
app.get("/getUid",(req,res)=>{
    var uid=req.session.uid;
    console.log(uid)
    if(uid==undefined){
        res.send({code:-1,msg:"未登录"})
    }else{
        pool.query("SELECT nick_name FROM u9_user WHERE uid=?",[uid],(err,result)=>{
            if(result.length==0){
                res.send({code:-2,msg:"请设置一个昵称"})
            }else{
                res.send({code:1,msg:"已登录",uid:uid,nickName:result[0].nick_name});
            }
        })
    }
});



























