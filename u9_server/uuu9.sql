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


/**游戏地图分类**/
CREATE TABLE u9_class_group(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  gname VARCHAR(32)
);

/** 地图详情 **/
CREATE TABLE u9_class(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  class_id INT,               #所属地图分类编号
  class_name VARCHAR(16),     #所属地图类名
  map_name VARCHAR(64),       #地图名称
  des_name VARCHAR(32),       #地图作者
  map_size DECIMAL(5,2),      #地图大小
  game_mata VARCHAR(32),      #地图支持版本
  map_language VARCHAR(16),   #地图支持语言

  upload_time BIGINT,         #上传时间
  download_count  BIGINT,     #下载总次数
  grade_count BIGINT,         #评分人数
  details VARCHAR(1024)       #地图介绍
);

/** 地图截图及封面 **/

/** 用户信息 **/
CREATE TABLE u9_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),      #帐号
  upwd VARCHAR(32),       #密码
  email VARCHAR(64),      #邮箱
  phone CHAR(16),         #电话

  avatar VARCHAR(164),    #头像路径
  user_name VARCHAR(32),  #真实姓名
  gender INT,             #性别
  id_card CHAR(18)        #身份证号
);


/*********************/
/*****数据导入********/
/*********************/

/** 地图类名 **/
INSERT INTO u9_class_group VALUES
(NULL,'防守地图'),
(NULL,'对抗地图'),
(NULL,'角色地图'),
(NULL,'TD塔防'),
(NULL,'战役地图'),
(NULL,'ORPG'),
(NULL,'生存地图'),
(NULL,'其他地图');

/** 地图详情 **/
INSERT INTO u9_class VALUES
(NULL,1,'防守地图','火影忍者羁绊7.05','暗君',70.4,'1.24-1.27','简体中文',150123456789,2109446,14966,'详情'),
(NULL,2,'对抗地图','疾风忍法帖6.5-再会','BT',6.48,'1.24-1.26','简体中文',150123456789,71426,428,'详情'),
(NULL,4,'TD塔防','混乱武林IIIA刀光剑影5.97','MissingNo',10.25,'1.24-1.27A(8M补丁)','简体中文',150123456789,157083,570,'详情');

/** 用户信息 **/
INSERT INTO u9_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1',513030199505220212),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1',513030199505220212),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1',513030199505220212),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0',513030199505220222);

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
