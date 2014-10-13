团购技术方案
---
###1. 目前确认下来,准备进行迁移的数据库表如下.

 + TuanMulti - 没有注释,代码中也没,看上去像是团购商家的一个评价
 + TuanGuarantFee - 团购卖家/冲/退保证金记录表
 + zcms.Tbao - 商品主库
 + zcms.TuanEvent - 团购活动表
 + zcms.TuanGuideInfo - 团购活动信息
 + zcms.TuanAdminLog - 管理员操作记录
 + zcms.TuanEventSubtheme - 团购主题
 + zcms.TuanEventSubthemeRelate - 关系表
 + zcms.TuanGroup - 团购分组
 + zcms.TuannewSalesStat 团购数据
 + zcms.TuanSellerPunish 商家惩罚纪录

###2. 针对新的Tbao设计,之前的数据库过度冗余.

**Tbao:**

```
  CREATE TABLE `Tbao` (
    `bid` int(10) NOT NULL AUTO_INCREMENT COMMENT '宝贝id',
    `bname` varchar(255) DEFAULT NULL COMMENT '宝贝名称',
    `bintion` varchar(255) DEFAULT NULL COMMENT '宝贝介绍',
    `sname` varchar(255) NOT NULL COMMENT '店铺名称',
    `itemInfoId` bigint(20) unsigned DEFAULT NULL COMMENT '商品ID',
    `userId` int(10) NOT NULL DEFAULT '0' COMMENT '卖家的userId',
    `tab` varchar(32) DEFAULT 'youxuan' COMMENT '标识是否为优选商品',
    `burl` varchar(255) DEFAULT NULL COMMENT '宝贝链接',
    `baototal` int(10) NOT NULL DEFAULT '0' COMMENT '点击宝贝数',
    `bprice` decimal(20,2) DEFAULT NULL COMMENT '宝贝原价',
    `bnowprice` decimal(20,2) DEFAULT NULL COMMENT '宝贝现价',
    `bstart_new` datetime DEFAULT NULL COMMENT '开始时间',
    `blast_new` datetime DEFAULT NULL COMMENT '结束时间',
    `bimg` varchar(255) DEFAULT NULL COMMENT '宝贝图片地址',
    `zimg` varchar(255) NOT NULL COMMENT '中型图' ?,
    `bigimg` varchar(255) DEFAULT NULL COMMENT '大图' ?,
    `coverImg` varchar(255) DEFAULT NULL COMMENT '封面图',
    `istop` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否置顶 1为置顶',
    `isvalid` tinyint(1) NOT NULL COMMENT '是否显示 0为不显示',
    `isDeleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 1为删除',
    `isOver` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否结束',
    `isMiaoSha` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是秒杀商品',
    `isLottery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否抽奖宝贝',
    `isMustBuyer` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要买家认证',
    `coupon_vender_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券提供者ID',
    `tuan_guide_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '团购使用方法ID',
    `updated` int(10) DEFAULT NULL COMMENT '更新时间',
    `itemdetail` text NOT NULL COMMENT '商品详情',
    `showtype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示范围,0网站和手机，1手机，2网站',
    `ordering` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序值',
    `trustUser` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '可信用户数',
    `brandIntroduce` varchar(255) DEFAULT NULL COMMENT '品牌介绍',
    `keywords` varchar(255) DEFAULT NULL COMMENT '团购商品关键字',
    `reqId` int(10) NOT NULL DEFAULT '0' COMMENT '卖家后台申请id',
    `step` tinyint(4) DEFAULT NULL COMMENT '商品报名步骤',
    `stepEx` tinyint(4) DEFAULT '0' COMMENT '商品报名步骤扩展',
    `expressId` varchar(32) DEFAULT NULL COMMENT '快递编号',
    `denyCause` varchar(512) DEFAULT NULL COMMENT '拒绝理由',
    `numIid` varchar(64) DEFAULT NULL COMMENT '淘宝商品ID',
    `lastVertifyTime` int(10) DEFAULT '0' COMMENT '最后核实时间',
    `itemCheckId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品验货id',
    `tCatId` int(10) DEFAULT NULL COMMENT '团购分类Id',
    `gCatId` int(10) DEFAULT NULL COMMENT '商品类目第一级类目，用于团购图墙分类',
    `gCatIds` varchar(64) DEFAULT NULL COMMENT '商品类目全路径Id,使用##分隔',
    PRIMARY KEY (`bid`),
    KEY `bstart_new` (`bstart_new`,`blast_new`),
    KEY `idx_step` (`step`),
    KEY `idx_expressId` (`expressId`),
    KEY `idx_created` (`created`),
    KEY `idx_userId` (`userId`),
    KEY `idx_itemInfoId` (`itemInfoId`),
    KEY `idx_itemCheckId` (`itemCheckId`),
    KEY `idx_tCatId` (`tCatId`),
    KEY `idx_gCatId` (`gCatId`)
  ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='宝贝表';
```

*其余的表,还没有发现可优化的地方.可以直接进行迁移.SQL如下:*

**TuanMulti**

```
CREATE TABLE `TuanMulti` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL COMMENT '团购编号',
  `refundRate` int(10) NOT NULL DEFAULT '0' COMMENT '退货率',
  `compaintRate` int(10) NOT NULL DEFAULT '0' COMMENT '投诉率',
  `imRate` int(10) NOT NULL DEFAULT '0' COMMENT 'im反应时间',
  `receiveRate` int(10) NOT NULL DEFAULT '0' COMMENT '物流揽件率',
  `expiredRate` int(10) NOT NULL DEFAULT '0' COMMENT '本次过期时间一般为create后12d',
  `sendRate` int(10) NOT NULL DEFAULT '0' COMMENT '发货时间',
  `isvalid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否可以上线标志 0 通过  1不通过',
  `comment` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  `created` int(10) NOT NULL DEFAULT '0',
  `updated` int(10) NOT NULL DEFAULT '0',
  `nstartDay` int(10) DEFAULT NULL COMMENT '下一次开始时间',
  `nlastDay` int(10) DEFAULT NULL COMMENT '下一次结束时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1等待数据 2等待卖家确认 3 确认超时 0可以上线 ',
  `tradeItemId` bigint(20) NOT NULL COMMENT '商品编号',
  `userId` int(10) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`),
  KEY `idx_bid` (`bid`),
  KEY `idx_tradeItemId` (`tradeItemId`),
  KEY `idx_userId` (`userId`),
  KEY `idx_created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8
```

**TuanEvent**

```
CREATE TABLE `TuanEvent` (
  `tid` int(10) unsigned NOT NULL COMMENT '活动Tid',
  `tname` varchar(255) DEFAULT NULL COMMENT '活动名',
  `tinfo` varchar(510) DEFAULT NULL COMMENT '备用字段',
  `onlineTime` int(10) DEFAULT NULL COMMENT '对外入口开放时间',
  `offlineTime` int(10) DEFAULT NULL COMMENT '对外入口结束时间',
  `pageHeadImg` varchar(255) DEFAULT NULL COMMENT '页头banner',
  `colors` varchar(255) DEFAULT NULL COMMENT 'json格式，背景色及导航栏颜色，包括background、navBarBackground、navBarSelectedBackground、navBarFontUnselectedColor、navBarFontSelectedColor',
  `isNavBarEnable` tinyint(1) DEFAULT '1' COMMENT '是否显示导航栏',
  `navBarHeadImg` varchar(255) DEFAULT NULL COMMENT '导航栏头部图片',
  `navBarFootImg` varchar(255) DEFAULT NULL COMMENT '导航栏底部图片',
  `isMoreBtnEnable` tinyint(1) DEFAULT NULL COMMENT '查看更多按钮是否显示',
  `moreBtnImg` varchar(255) DEFAULT NULL COMMENT '查看更多按钮图片',
  `moreBtnUrl` varchar(255) DEFAULT NULL COMMENT '查看更多按钮链接',
  `subTheme` varchar(1024) DEFAULT NULL COMMENT '子主题，json格式,经过压缩',
  `creatorI int(10) DEFAULT NULL COMMENT '创建者Id',
  `creator` varchar(32) DEFAULT NULL COMMENT '创建者',
  `created` int(10) DEFAULT NULL COMMENT '创建时间',
  `updated` int(10) DEFAULT NULL COMMENT '更新时间',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
```

**TuanGuarantFee**

```
CREATE TABLE `TuanGuarantFee` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `outPayType` int(10) NOT NULL DEFAULT '0' COMMENT '外部支付类型与资金这边一致',
  `payRequestId` int(10) NOT NULL DEFAULT '0' COMMENT 'payType =1 的那条',
  `amount` int(10) DEFAULT '0' COMMENT '钱（单位分）',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态 1 成功 0失败',
  `fromUserId` int(10) DEFAULT '0',
  `bid` int(10) NOT NULL COMMENT '团购编号',
  `created` int(10) DEFAULT '0' COMMENT '创建时间',
  `updated` int(10) DEFAULT '0' COMMENT '更新时间',
  `refundRequestId` int(10) DEFAULT '0' COMMENT '退款的requestId',
  `refundTime` int(10) DEFAULT '0' COMMENT '退款时间',
  `refundAmount` int(10) DEFAULT '0' COMMENT '钱（单位分）',
  `refundStatus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '团购保证金允许退款状态：1-等待全部订单完成  2-等待最后一笔订单维权期结束  3-允许退款 4-退款完成 5-退款失败',
  `leftTime` int(10) DEFAULT '0' COMMENT '距离最后一笔订单距离维权期限结束时间',
  `refundFinishTime` int(10) DEFAULT '0' COMMENT '退款完成时间',
  PRIMARY KEY (`id`),
  KEY `idx_fromUserId` (`fromUserId`),
  KEY `idx_created` (`created`),
  KEY `idx_bid` (`bid`),
  KEY `idx_refundTime` (`refundTime`),
  KEY `idx_refundFinishTime` (`refundFinishTime`)
) ENGINE=InnoDB AUTO_INCREMENT=1049 DEFAULT CHARSET=utf8 COMMENT='团购卖家/冲/退保证金记录表'
```

**TuanGuideInfo**

```
 CREATE TABLE `TuanGuideInfo` (
  `tuan_guide_id` tinyint(3) NOT NULL COMMENT '优惠券使用方法ID',
  `tuan_guide_name` varchar(20) NOT NULL COMMENT '团购使用方法名称',
  `image_file_full_name` varchar(30) NOT NULL DEFAULT '' COMMENT '图片文件名',
  `use_step1` varchar(100) NOT NULL DEFAULT '' COMMENT '使用步骤1',
  `use_step2` varchar(100) NOT NULL DEFAULT '' COMMENT '使用步骤2',
  `use_step3` varchar(100) NOT NULL DEFAULT '' COMMENT '使用步骤3',
  `updated` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`tuan_guide_id`),
  UNIQUE KEY `tuan_guide_name` (`tuan_guide_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券使用步骤'
```

**TuanAdminLog**

```
CREATE TABLE `TuanAdminLog` (
  `operationId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '操作日志ID',
  `adminId` int(10) NOT NULL DEFAULT '0' COMMENT '管理员的userId',
  `commodityId` int(10) NOT NULL DEFAULT '0' COMMENT '商品id',
  `operationType` varchar(255) DEFAULT NULL COMMENT '操作类型',
  `operationTime` int(10) DEFAULT NULL COMMENT '操作时间',
  `sellerId` int(10) NOT NULL DEFAULT '0' COMMENT '卖家的userId',
  `opStep` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '执行步骤（如初审，复审等）',
  `opType` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '操作类型(编辑，通过，拒绝，回退等)',
  PRIMARY KEY (`operationId`),
  KEY `idx_adminId` (`adminId`),
  KEY `idx_commodityId` (`commodityId`),
  KEY `idx_operationTime` (`operationTime`),
  KEY `idx_sellerId` (`sellerId`),
  KEY `idx_opStep` (`opStep`),
  KEY `idx_opType` (`opType`)
) ENGINE=InnoDB AUTO_INCREMENT=635169 DEFAULT CHARSET=utf8 COMMENT='管理员操作日志表'
```

**TuanGroup**

```
CREATE TABLE `TuanGroup` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT '主题或者活动id',
  `tname` varchar(255) DEFAULT NULL COMMENT '主题名',
  `tinfo` varchar(255) DEFAULT NULL COMMENT '主题简介',
  `creatorId` int(10) NOT NULL DEFAULT '0' COMMENT '创建者的userId',
  `creator` varchar(32) NOT NULL COMMENT '创建者名',
  `bstart` int(10) NOT NULL DEFAULT '0' COMMENT '报名开始时间',
  `bend` int(10) NOT NULL DEFAULT '0' COMMENT '报名截止时间',
  `isSellerVisible` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否对卖家可见',
  `isOnline` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否上线',
  `showtype` varchar(16) NOT NULL DEFAULT '0' COMMENT '展示位置，顺序 【pc端、手机端】0为未选择 1为选中 以,连接',
  `scope` varchar(16) NOT NULL DEFAULT '0' COMMENT '招商范围，顺序 【优店、蘑菇团】0为未选择 1为选中 以,连接',
  `invitedSellerIds` varchar(1024) DEFAULT NULL COMMENT '受邀商家id,用|分隔',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已被删除 1 为已删除 0 为未被删除',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型 0：主题 1：活动',
  `created` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`tid`),
  KEY `idx_time` (`bstart`,`bend`),
  KEY `idx_creatorid` (`creatorId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='团购分组表'
```

**TuannewSalesStat**

```
CREATE TABLE `TuanNewSalesStat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL COMMENT '宝贝id',
  `statDate` int(10) NOT NULL COMMENT '统计日期',
  `salesCount` int(10) DEFAULT '0' COMMENT '销售量',
  `totalPrice` float DEFAULT '0' COMMENT '一天的销售额',
  `showTuanHomeCount` int(10) DEFAULT '0' COMMENT '团购首页展现次数',
  `clickDetailsCount` int(10) DEFAULT '0' COMMENT '团购首页点击次数',
  `showDetailsCount` int(10) DEFAULT '0' COMMENT '团购商品详情展现次数',
  `anhaoGetCount` int(10) DEFAULT '0' COMMENT '团购商品详情暗号领取次数',
  `clickToBuyCount` int(10) DEFAULT '0' COMMENT '团购商品详情出提示后真正去淘宝次数',
  `catid` int(10) DEFAULT NULL COMMENT '类目ID',
  `commission` float DEFAULT '0' COMMENT '用户获得的佣金',
  PRIMARY KEY (`id`),
  KEY `idx_bid` (`bid`),
  KEY `idx_statDate` (`statDate`),
  KEY `idx_salesCount` (`salesCount`),
  KEY `idx_totalPrice` (`totalPrice`),
  KEY `idx_showTuanHomeCount` (`showTuanHomeCount`),
  KEY `idx_clickDetailsCount` (`clickDetailsCount`),
  KEY `idx_showDetailsCount` (`showDetailsCount`),
  KEY `idx_anhaoGetCount` (`anhaoGetCount`),
  KEY `idx_clickToBuyCount` (`clickToBuyCount`),
  KEY `idx_commission` (`commission`)
) ENGINE=InnoDB AUTO_INCREMENT=1621599 DEFAULT CHARSET=utf8 COMMENT='团购商品点击数、展现、销量统计'
```

**TuanEventSubtheme**

```
CREATE TABLE `TuanEventSubTheme` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '子主题ID',
  `tid` int(10) unsigned NOT NULL COMMENT '活动Tid',
  `subThemeName` varchar(255) DEFAULT NULL COMMENT '子主题名',
  `subThemeImg` varchar(255) DEFAULT NULL COMMENT '子主题图片',
  `created` int(10) DEFAULT NULL COMMENT '创建时间',
  `updated` int(10) DEFAULT NULL COMMENT '更新时间',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`sid`),
  KEY `idx_tid` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='团子主题信息表'
```

**TuanEventSubthemeRelate**

```
CREATE TABLE `TuanEventSubThemeRelate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '关联id',
  `sid` int(10) unsigned NOT NULL COMMENT '子主题ID',
  `tradeItemId` bigint(20) unsigned NOT NULL COMMENT '商品ID',
  `created` int(10) DEFAULT NULL COMMENT '创建时间',
  `updated` int(10) DEFAULT NULL COMMENT '更新时间',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  KEY `idx_sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=1788 DEFAULT CHARSET=utf8 COMMENT='团子主题关联表'
```

**TuanSellerPunish**

```
CREATE TABLE `TuanSellerPunish` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '处罚id',
  `userId` int(10) NOT NULL COMMENT '卖家id',
  `isPause` int(1) DEFAULT '0' COMMENT '是否暂停与卖家的合作',
  `reason` varchar(225) DEFAULT NULL COMMENT '处罚理由',
  `pstart` int(10) DEFAULT NULL COMMENT '处罚开始时间',
  `pend` int(10) DEFAULT NULL COMMENT '处罚结束时间',
  `created` int(10) DEFAULT NULL COMMENT '创建时间',
  `updated` int(10) DEFAULT NULL COMMENT '更新时间',
  `creatorId` int(10) DEFAULT NULL COMMENT '最后修改者id',
  `creator` varchar(32) DEFAULT NULL COMMENT '最后修改者',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `oplog` varchar(1000) DEFAULT NULL COMMENT '操作日志',
  PRIMARY KEY (`pid`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='团购卖家处罚表'
```

###3. 机器启动的Crond脚本,迁库涉及到的

+ Crond_Pay_UnfreezeRefund_UnfreezeRefund::setRefundStatus4Tuan	支付改造后的团购保证金退款完成状态查询
+ Crond_Tuan_AutoReject::notify_msg	团购超时5天通知
+ Crond_Tuan::tuanGuarantFeeRefund	团购保证金退款允许状态
+ Crond_Tuan_AutoReject::start_new	团购拒绝
+ Crond_Tuan::closeMoguTuan	团购下线后关闭
+ Crond_Trade_Ad_CpsOrder::genTuanItems	营销平台－CPS－团购商品xml
+ Crond_shop_Shopdetail::menu_youdian_istuangou	统计参加团购活动的店铺
+ Crond_Tuan::step_to_finish	切换到期团购到下线状态
+ Crond_Tuan::setTuanRecommdData	团购浏览该商品的菇凉还看过数据
+ Crond_Tuan::createTuanItemRate	团购日常商品健康度抽取
+ Crond_Tuan::calc_sort_new	团购首页更新排序
+ Crond_Trade_AutoTask::receiveOrder_tuan	团购订单物流签
+ Crond_CreateCms::tuan	更新首页团购CMS

###4. 发布计划.
1. 先新建数据库表
2. 然后发布添加写redis的model层代码,同时进行迁库数据导入的操作.数据量不大,也省了收集日志的麻烦.

    + 写redis的格式为某个id的某个字段更新,或者添加了某条数据,写redis的时侯,添加时间点(预计完成时间)
    + 当程序到达时间点的时候,开始读写新表,抛弃原有的数据库表,同时另外一个进行同步数据,同步数据时间可以关闭页面访问,确保数据不冲突.

3. 完成迁移之后,其余业务模块,可议挨个进行梳理,代码重构和删减.

###5. TODO
1. 整个业务梳理
2. 当前代码梳理
3. 表结构,数据量预估(当前和重构之后)
4. 代码目录,具体的流程 -- 新建为n+原文件名,待全部完成之后,替换源文件
5. 开发计划
6. 发布计划
7. 工作量评估 -- 2周左右

数据库,表进行拆分.
