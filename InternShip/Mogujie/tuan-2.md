团购Controller代码梳理
---
目前团购目录下有如下文件:

```
.
├── admin.php           团购后端管理界面,包括了管理源的审核
├── alipay.config.php   支付宝相关
├── alipay.php          支付宝相关
├── audit.php           资金相关
├── brands.php          品牌团代码,已经废弃
├── common.php
├── config
│   └── route.php
├── error.php
├── event               团购活动相关
│   ├── event618.php
│   ├── event710.php
│   ├── newgirl.php
│   └── worldcup.php
├── event520.php        团购活动
├── eventbrandsale.php  团购活动
├── eventflowertuan.php 团购活动
├── eventgirls.php      团购活动
├── eventmogutuan.php   团购活动
├── event.php           团购活动(有人将活动写在这个文件里)
├── eventplaygarden.php 团购活动
├── help.php            相关介绍,废弃
├── index.php           旧版团购首页
├── list.php            新版图墙相关
├── mact                移动版代码 -- 不清楚
│   ├── admin.php
│   ├── index.php
│   ├── mevent.php
│   └── mobile.php
├── miaosha.php         秒杀活动
├── signup.php          商家报名和商品管理
├── springtuan.php      团购活动
├── statisticalcurve.php    报表系统
├── taokeCommission.php     之前的遗留的淘宝代码
├── template.php        模板
├── tuan.php            旧版团购页面图墙
├── utdetail.php        新版团购
├── utindex.php         新版团购
└── weixin.php          微信接口
```



