团购新的方案
---

###确认需求:

1. 团购流程为:
 + 初审 - 审查店铺的dsr,商品的评价,后期的需求为程序自动判别
 + 复审 - 主要是砍价,库存,比价,均为人工
 + 素材审核 - 提交图片,有两种图片,封面和具体页,具体页图片不止一张
 + 准备上线 - 进行排期,默认是3天.
 + 进行中 - 团购进行中,如过超过800即下架.
 + 下线 - 商品终了

2. 新的功能点
 + 查寻时希望为模糊查寻,即字错也能查
 + 商家商品同过买手选择上线达到20天,即主动发系统消息给商家
 + 团购的统计,转化率,uv,pv等 - 可以推给报表系统,本次可以不考虑

3. 砍掉的功能
 + 团购管理页取消.
 + 秒杀保留,不进行修改.

4. 旧有功能修复
 + 下线重上,这边需要根据团购之间的店铺健康值,即TuanMulti的数据,上线之后,旧有数据保留.

5. 保留的功能
 + 团购活动.

###新的数据库设计
*主要针对Tbao库,将之前的Tbao库拆成两张表,一张为通过商品表,一张为申请表.*

新表如下:

**TuanItem** - 通过团购挑选的商品

```
CREATE TABLE `TuanItem`(
    `tuanId` int(10) NOT NULL AUTO_INCREMENT COMMENT '团购id',
    `tuanName` varchar(255) DEFAULT NULL COMMENT '团购名称',
    `tuanIntion` varchar(255) DEFAULT NULL COMMENT '团购介绍',
    `shopId` int(10) NOT NULL DEFAULT '0' COMMENT '店铺ID',
    `itemId` bigint(20) unsigned DEFAULT NULL COMMENT '商品ID',
    `type` tinyint(4) DEFAULT '0' COMMENT '标识是否为优选商品 - 三优为1',
    `clickTotal` int(10) NOT NULL DEFAULT '0' COMMENT '点击宝贝数',
    `tuanPrice` decimal(20,2) DEFAULT NULL COMMENT '宝贝现价,原价通过接口获取',
    `tuanStart` datetime DEFAULT NULL COMMENT '开始时间',
    `tuanLast` datetime DEFAULT NULL COMMENT '结束时间',
    `tuanImg` varchar(255) DEFAULT NULL COMMENT '宝贝图片地址',
    `coverImg` varchar(255) DEFAULT NULL COMMENT '封面图',
    `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '商品状态,1为正常,3为结束,5为删除',
    `isTop` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否置顶 1为置顶',
    `showType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示范围,0网站和手机，1手机，2网站',
    `trustUser` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '可信用户数',
    `tCatId` int(10) DEFAULT NULL COMMENT '团购分类Id',
    `gCatId` int(10) DEFAULT NULL COMMENT '商品类目第一级类目，用于团购图墙分类',
    `gCatIds` varchar(64) DEFAULT NULL COMMENT '商品类目全路径Id,使用##分隔',
    `created` int(10) DEFAULT NULL COMMENT '创建时间',
    `updated` int(10) DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`tuanId`),
    KEY `bstart_new` (`tuanStart`,`tuanLast`),
    KEY `idx_shopId` (`shopId`),
    KEY `idx_itemId` (`itemId`),
    KEY `idx_tCatId` (`tCatId`),
    KEY `idx_gCatId` (`gCatId`)
  ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='团购商品表';
```

**TuanItemStep** - 团购商品报名的周期管理

```
CREATE TABLE `TuanItemStep` (
    `tuanId` int(10) NOT NULL AUTO_INCREMENT COMMENT '团购id',
    `tuanName` varchar(255) DEFAULT NULL COMMENT '团购名称',
    `tuanIntion` varchar(255) DEFAULT NULL COMMENT '团购介绍',
    `tuanPrice` decimal(20,2) DEFAULT NULL COMMENT '团购现价',
    `itemId` int(10) NOT NULL COMMENT '商品id',
    `type` tinyint(4) DEFAULT '0' COMMENT '标识是否为优选商品 - 三优为1',
    `shopId` varchar(255) NOT NULL COMMENT '店铺id',
    `tuanImg` varchar(255) DEFAULT NULL COMMENT '宝贝图片地址',
    `coverImg` varchar(255) DEFAULT NULL COMMENT '封面图',
    `step` tinyint(4) DEFAULT NULL COMMENT '商品报名步骤',
    `denyCause` varchar(512) DEFAULT NULL COMMENT '拒绝理由',
    `lastVertifyTime` int(10) DEFAULT '0' COMMENT '最后核实时间',
    `itemCheckId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品验货id',
    `isvalid` tinyint(1) NOT NULL COMMENT '是否显示 0为不显示',
    `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '商品状态,1为正常,3为结束,5为删除',
    `tCatId` int(10) DEFAULT NULL COMMENT '团购分类Id',
    `gCatId` int(10) DEFAULT NULL COMMENT '商品类目第一级类目，用于团购图墙分类',
    `gCatIds` varchar(64) DEFAULT NULL COMMENT '商品类目全路径Id,使用##分隔',
    `created` int(10) DEFAULT NULL COMMENT '创建时间',
    `updated` int(10) DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`tuanId`),
    KEY `idx_step` (`step`),
    KEY `idx_shopId` (`shopId`),
    KEY `idx_itemId` (`itemId`),
    KEY `idx_itemCheckId` (`itemCheckId`),
    KEY `idx_tCatId` (`tCatId`),
    KEY `idx_gCatId` (`gCatId`)
  ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='团购审核过程表';
```

