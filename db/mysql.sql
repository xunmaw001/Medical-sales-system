DROP DATABASE IF EXISTS jspxuclu;

CREATE DATABASE jspxuclu default character set utf8mb4 collate utf8mb4_general_ci;

USE jspxuclu;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)  UNIQUE   COMMENT '用户名',
	`mima` varchar(200)    COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianling` int    COMMENT '年龄',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dianziyouxiang` varchar(200)    COMMENT '电子邮箱',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`youzhengbianhao` int    COMMENT '邮政编号',
	`jiatingzhuzhi` varchar(200)    COMMENT '家庭住址',
	`gerenzhaopian` varchar(200)    COMMENT '个人照片',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,nianling,lianxidianhua,dianziyouxiang,shenfenzhenghao,youzhengbianhao,jiatingzhuzhi,gerenzhaopian,money) VALUES('用户1','123456','姓名1','男',1,'020-89819991','773890001@qq.com','440300199101010001',1,'家庭住址1','yonghu_gerenzhaopian1',1);
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,nianling,lianxidianhua,dianziyouxiang,shenfenzhenghao,youzhengbianhao,jiatingzhuzhi,gerenzhaopian,money) VALUES('用户2','123456','姓名2','男',2,'020-89819992','773890002@qq.com','440300199202020002',2,'家庭住址2','yonghu_gerenzhaopian2',2);
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,nianling,lianxidianhua,dianziyouxiang,shenfenzhenghao,youzhengbianhao,jiatingzhuzhi,gerenzhaopian,money) VALUES('用户3','123456','姓名3','男',3,'020-89819993','773890003@qq.com','440300199303030003',3,'家庭住址3','yonghu_gerenzhaopian3',3);


DROP TABLE IF EXISTS `yaopinxinxi`;

CREATE TABLE `yaopinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaopinbianhao` varchar(200)  UNIQUE   COMMENT '药品编号',
	`yaopinmingcheng` varchar(200)    COMMENT '药品名称',
	`yaopinleixing` varchar(200)    COMMENT '药品类型',
	`yaopinkucun` int    COMMENT '药品库存',
	`yaopintupian` varchar(200)    COMMENT '药品图片',
	`shiyingzhengzhuang` varchar(200)    COMMENT '适应症状',
	`jinjizhengzhuang` varchar(200)    COMMENT '禁忌症状',
	`yaopinchengfen` longtext    COMMENT '药品成分',
	`zhuyishixiang` longtext    COMMENT '注意事项',
	`yaopinxiangqing` longtext    COMMENT '药品详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品信息';

INSERT INTO yaopinxinxi(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinkucun,yaopintupian,shiyingzhengzhuang,jinjizhengzhuang,yaopinchengfen,zhuyishixiang,yaopinxiangqing,thumbsupnum,crazilynum,price) VALUES('药品编号1','药品名称1','中药材',1,'yaopinxinxi_yaopintupian1','适应症状1','禁忌症状1','药品成分1','注意事项1','药品详情1',1,1,1);
INSERT INTO yaopinxinxi(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinkucun,yaopintupian,shiyingzhengzhuang,jinjizhengzhuang,yaopinchengfen,zhuyishixiang,yaopinxiangqing,thumbsupnum,crazilynum,price) VALUES('药品编号2','药品名称2','中药材',2,'yaopinxinxi_yaopintupian2','适应症状2','禁忌症状2','药品成分2','注意事项2','药品详情2',2,2,2);
INSERT INTO yaopinxinxi(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinkucun,yaopintupian,shiyingzhengzhuang,jinjizhengzhuang,yaopinchengfen,zhuyishixiang,yaopinxiangqing,thumbsupnum,crazilynum,price) VALUES('药品编号3','药品名称3','中药材',3,'yaopinxinxi_yaopintupian3','适应症状3','禁忌症状3','药品成分3','注意事项3','药品详情3',3,3,3);


DROP TABLE IF EXISTS `rukujilu`;

CREATE TABLE `rukujilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaopinbianhao` varchar(200)    COMMENT '药品编号',
	`yaopinmingcheng` varchar(200)    COMMENT '药品名称',
	`yaopinleixing` varchar(200)    COMMENT '药品类型',
	`yaopinkucun` int    COMMENT '药品库存',
	`rukushijian` datetime    COMMENT '入库时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库记录';

INSERT INTO rukujilu(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinkucun,rukushijian) VALUES('药品编号1','药品名称1','药品类型1',1,CURRENT_TIMESTAMP);
INSERT INTO rukujilu(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinkucun,rukushijian) VALUES('药品编号2','药品名称2','药品类型2',2,CURRENT_TIMESTAMP);
INSERT INTO rukujilu(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinkucun,rukushijian) VALUES('药品编号3','药品名称3','药品类型3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `chukujilu`;

CREATE TABLE `chukujilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaopinbianhao` varchar(200)    COMMENT '药品编号',
	`yaopinmingcheng` varchar(200)    COMMENT '药品名称',
	`yaopinleixing` varchar(200)    COMMENT '药品类型',
	`yaopinkucun` int    COMMENT '药品库存',
	`chukushijian` datetime    COMMENT '出库时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出库记录';

INSERT INTO chukujilu(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinkucun,chukushijian) VALUES('药品编号1','药品名称1','药品类型1',1,CURRENT_TIMESTAMP);
INSERT INTO chukujilu(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinkucun,chukushijian) VALUES('药品编号2','药品名称2','药品类型2',2,CURRENT_TIMESTAMP);
INSERT INTO chukujilu(yaopinbianhao,yaopinmingcheng,yaopinleixing,yaopinkucun,chukushijian) VALUES('药品编号3','药品名称3','药品类型3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `yongyaozhinan`;

CREATE TABLE `yongyaozhinan` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`zhinanbiaoti` varchar(200)    COMMENT '指南标题',
	`yaopinmingcheng` varchar(200)    COMMENT '药品名称',
	`yaopinleixing` varchar(200)    COMMENT '药品类型',
	`fengmiantupian` varchar(200)    COMMENT '封面图片',
	`buliangfanying` longtext    COMMENT '不良反应',
	`yongfayongliang` longtext    COMMENT '用法用量',
	`yongyaozhinan` longtext    COMMENT '用药指南',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用药指南';

INSERT INTO yongyaozhinan(zhinanbiaoti,yaopinmingcheng,yaopinleixing,fengmiantupian,buliangfanying,yongfayongliang,yongyaozhinan,thumbsupnum,crazilynum) VALUES('指南标题1','药品名称1','药品类型1','yongyaozhinan_fengmiantupian1','不良反应1','用法用量1','用药指南1',1,1);
INSERT INTO yongyaozhinan(zhinanbiaoti,yaopinmingcheng,yaopinleixing,fengmiantupian,buliangfanying,yongfayongliang,yongyaozhinan,thumbsupnum,crazilynum) VALUES('指南标题2','药品名称2','药品类型2','yongyaozhinan_fengmiantupian2','不良反应2','用法用量2','用药指南2',2,2);
INSERT INTO yongyaozhinan(zhinanbiaoti,yaopinmingcheng,yaopinleixing,fengmiantupian,buliangfanying,yongfayongliang,yongyaozhinan,thumbsupnum,crazilynum) VALUES('指南标题3','药品名称3','药品类型3','yongyaozhinan_fengmiantupian3','不良反应3','用法用量3','用药指南3',3,3);


DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);


DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '是否关闭[关闭/开放]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛表';

INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题1','帖子内容1',1,1,'用户名1','是否关闭[关闭/开放]1');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题2','帖子内容2',2,2,'用户名2','是否关闭[关闭/开放]2');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题3','帖子内容3',3,3,'用户名3','是否关闭[关闭/开放]3');


DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`tablename` varchar(200)   default 'yaopinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float    COMMENT '单价',
	`discountprice` float    COMMENT '会员价',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名1',1,1,'商品名称1','cart_picture1',1,1,1);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名2',2,2,'商品名称2','cart_picture2',2,2,2);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名3',3,3,'商品名称3','cart_picture3',3,3,3);


DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`orderid` varchar(200) NOT NULL UNIQUE   COMMENT '订单id',
	`tablename` varchar(200)   default 'yaopinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '商品图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float NOT NULL  default '0' COMMENT '价格/积分',
	`discountprice` float   default '0' COMMENT '折扣价格',
	`total` float NOT NULL  default '0' COMMENT '总价格/总积分',
	`discounttotal` float   default '0' COMMENT '折扣总价格',
	`type` int    COMMENT '支付类型（1：现金 2：积分）',
	`status` varchar(200)    COMMENT '状态',
	`address` varchar(200)    COMMENT '地址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id1','商品表名1',1,1,'商品名称1','orders_picture1',1,1,1,1,1,1,'状态1','地址1');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id2','商品表名2',2,2,'商品名称2','orders_picture2',2,2,2,2,2,2,'状态2','地址2');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id3','商品表名3',3,3,'商品名称3','orders_picture3',3,3,3,3,3,3,'状态3','地址3');


DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`address` varchar(200) NOT NULL   COMMENT '地址',
	`name` varchar(200) NOT NULL   COMMENT '收货人',
	`phone` varchar(200) NOT NULL   COMMENT '电话',
	`isdefault` varchar(200) NOT NULL   COMMENT '是否默认地址[是/否]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

INSERT INTO address(userid,address,name,phone,isdefault) VALUES(1,'地址1','收货人1','电话1','是否默认地址[是/否]1');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(2,'地址2','收货人2','电话2','是否默认地址[是/否]2');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(3,'地址3','收货人3','电话3','是否默认地址[是/否]3');


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','storeup_picture1');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','storeup_picture2');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','storeup_picture3');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','news_picture1','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','news_picture2','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','news_picture3','内容3');


DROP TABLE IF EXISTS `discussyaopinxinxi`;

CREATE TABLE `discussyaopinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品信息评论表';

INSERT INTO discussyaopinxinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyaopinxinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyaopinxinxi(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discussyongyaozhinan`;

CREATE TABLE `discussyongyaozhinan` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用药指南评论表';

INSERT INTO discussyongyaozhinan(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyongyaozhinan(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyongyaozhinan(refid,content,userid) VALUES(3,'评论内容3',3);



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

