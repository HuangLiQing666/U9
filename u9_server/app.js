//引入express模块(接收响应 发送请求)
const express=require('express');
const cors=require("cors");
const mysql=require("mysql");
// const session=require("express-session");
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
// app.use(session({
//     secret:"128位字符串",
//     resave:true,
//     saveUninitialized:true
// }));
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































