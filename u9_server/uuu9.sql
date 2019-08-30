SET NAMES UTF8;
DROP DATABASE IF EXISTS u9;
CREATE DATABASE u9 CHARSET=UTF8;
USE u9;
										# UTF 8 Settings
										#init-connect=\'SET NAMES utf8\'
										#collation_server=utf8_unicode_ci
										#character_set_server=utf8
										#skip-character-set-client-handshake
										#character_sets-dir="C:/xampp/mysql/share/charsets"



/*********************/
/*****数据导入********/
/*********************/

/**首页顶部轮播图**/
USE u9;
CREATE TABLE u9_carousel_index_top(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  carousel_tit VARCHAR(255),
  carousel_pic VARCHAR(255) 
);

/**插入信息**/
INSERT INTO u9_carousel_index_top VALUES
(NULL,"《龙族幻想》定档7月18日不删档","carousel1.jpg"),
(NULL,"《我的世界》村庄更新正式上线","carousel2.jpg"),
(NULL,"《神雕侠侣2》手游今日内测","carousel3.jpg"),
(NULL,"超级马里奥制造2 坑前所有你必须知道的事","carousel4.jpg"),
(NULL,"《阴阳师：妖怪屋》双平台首测开启","carousel5.jpg"),
(NULL,"2019年十七届ChinaJoy新闻发布会在沪召开","carousel6.jpg");

/*电竞信息浏览框*/
USE u9;
CREATE TABLE u9_index_esnews(
  eid INT PRIMARY KEY AUTO_INCREMENT,
  esnews_top VARCHAR(32),
  esnews_tit VARCHAR(64),
  esnews_left_pic VARCHAR(255),
  esnews_right_pic VARCHAR(255),
  esnews_left_team VARCHAR(32),
  esnews_right_team VARCHAR(32),
  esnews_score VARCHAR(16),
  esnews_start VARCHAR(16),
  esnews_time VARCHAR(32)
);

INSERT INTO u9_index_esnews VALUES
(NULL,"英雄联盟","2019亚洲对抗赛小组赛(BO1)","T1.jpg","IG.jpg","T1","IG","0:1","已经结束","07-05日 21:00"),
(NULL,"英雄联盟","2019亚洲对抗赛小组赛(BO1)","T1.jpg","IG.jpg","T1","IG","0:2","已经结束","07-05日 21:00"),
(NULL,"英雄联盟","2019亚洲对抗赛小组赛(BO1)","T1.jpg","IG.jpg","T1","IG","0:3","已经结束","07-05日 21:00"),
(NULL,"英雄联盟","2019亚洲对抗赛小组赛(BO1)","T1.jpg","IG.jpg","T1","IG","0:4","已经结束","07-05日 21:00"),
(NULL,"英雄联盟","2019亚洲对抗赛小组赛(BO1)","T1.jpg","IG.jpg","T1","IG","0:5","暂未开始","07-05日 21:00"),
(NULL,"英雄联盟","2019亚洲对抗赛小组赛(BO1)","T1.jpg","IG.jpg","T1","IG","0:6","暂未开始","07-05日 21:00"),
(NULL,"英雄联盟","2019亚洲对抗赛小组赛(BO1)","T1.jpg","IG.jpg","T1","IG","0:7","暂未开始","07-05日 21:00"),
(NULL,"英雄联盟","2019亚洲对抗赛小组赛(BO1)","T1.jpg","IG.jpg","T1","IG","0:8","暂未开始","07-05日 21:00");

USE u9;
CREATE TABLE u9_index_todaynews(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  news_tit VARCHAR(255),
  news_countent VARCHAR(255),
  news_time VARCHAR(32),
  news_writer VARCHAR(32),
  news_pic VARCHAR(255)
);

INSERT INTO u9_index_todaynews VALUES
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg"),
(NULL,"赛博朋克2077 优化出色 主机及低配PC也有惊艳效果","CDPR已经连着两届E3为我们带来了《赛博朋克2077》的演示，而在官方的演示中，他们都使用了性能非常强悍的PC，也让不少玩家担心游戏在现世代主机和低配...","07-09","覃文峰","201907091142484841.jpg");

/*官方新闻*/
USE u9;
CREATE TABLE u9_index_synews(
  ofcid INT PRIMARY KEY AUTO_INCREMENT,
  Ofc_news VARCHAR(255),
  ofc_pic VARCHAR(255)
);

INSERT INTO u9_index_synews VALUES
(NULL,"海潮逆涌《阴阳师》海国篇全新版本即将来袭!","201907221214368591.jpg"),
(NULL,"《梦幻西游》电脑版2019暑期全新资料片今日开测","201907181159237341.jpg"),
(NULL,"千锤百炼、想你所想——天刀手游飞花测今日开启","201907171030454211.jpg"),
(NULL,"《我的起源》线下见面会重磅来袭!","201907151118398121.jpg"),
(NULL,"ChinaJoy2019英特尔再度包馆 盛宴别错过",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"「梦间集」IP新作 国风赛博手游《梦间集2》首曝!",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL),
(NULL,"云集Yourcraft 《我的世界》起床战争赛等你来战",NULL);

USE u9;
CREATE TABLE u9_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  nick_name VARCHAR(64)
);

/*游戏视频*/
USE u9;
CREATE TABLE u9_index_video(
  vid INT PRIMARY KEY AUTO_INCREMENT,
  vdo_tit VARCHAR(255),
  vdo_cnt VARCHAR(255),
  vdo_pic VARCHAR(255),
  vdo_pro VARCHAR(255),
  vdo_zz  VARCHAR(32),
  vdo_txt VARCHAR(64)
);

INSERT INTO u9_index_video VALUES
(NULL,'【3A漫游指南】赤痕：夜之仪式 |IGA与他的恶魔城狂想曲','松野泰己传（四）丨最终幻想12，PS2','vedio_1.jpg','vedio_zz1.jpg','3A漫游指南','游戏文化爱好者定制'),
(NULL,'【非理性跳坑】跳《控制》坑前所有你必须知道的事！','【非理性跳坑】跳《鬼哭邦》坑前所有','vedio_2.jpg','vedio_zz1.jpg','非理性跳坑','游戏跳坑之前必看的事'),
(NULL,'左右游评丨《赤痕：夜之仪式》评测：','左右游评丨《尸灵》评测：用游戏的方','vedio_3.jpg','vedio_zz2.jpg','左右游评','优质游戏评测节目生产线'),
(NULL,'十分钟教你玩懂爆肝独立游戏《雨中冒','新手八番钟：赤潮自走棋新手攻略 十','vedio_4.jpg','vedio_zz3.jpg','新手八番钟','祖传攻略三十年');

/*新游推荐*/
USE u9;
CREATE TABLE u9_index_newgame(
  ngid INT PRIMARY KEY AUTO_INCREMENT,
  ng_pic VARCHAR(255),
  ng_tit VARCHAR(255),
  ng_pla VARCHAR(255),
  ng_vir VARCHAR(255),
  ng_drwo VARCHAR(255),
  ng_scr DECIMAL(2,1) 
);

INSERT INTO u9_index_newgame VALUES
(NULL,'newgame_1.jpg','和平精英重装对决','IOS/安卓','团队竞技模式战斗节奏快 经典模式接近端游 风景好','滑铲功能还不能全模式通用',8.1),
(NULL,'newgame_2.jpg','和平精英重装对决','IOS/安卓','团队竞技模式战斗节奏快 经典模式接近端游 风景好','滑铲功能还不能全模式通用',8.1),
(NULL,'newgame_3.jpg','和平精英重装对决','IOS/安卓','团队竞技模式战斗节奏快 经典模式接近端游 风景好','滑铲功能还不能全模式通用',8.1),
(NULL,'newgame_4.jpg','和平精英重装对决','IOS/安卓','团队竞技模式战斗节奏快 经典模式接近端游 风景好','滑铲功能还不能全模式通用',8.1),
(NULL,'newgame_5.jpg','和平精英重装对决','IOS/安卓','团队竞技模式战斗节奏快 经典模式接近端游 风景好','滑铲功能还不能全模式通用',8.1),
