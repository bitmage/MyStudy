团购发布方案
---

###团购切分为四块

+   商家申请部份
+   后台管理部份
+   PC端展示部份
+   手机端展示部分

###分别涉及的文件如下:

**商家申请部份**

+ appbeta/classes/controller/tuan/config/route.php
+ appbeta/classes/controller/tuan/utsignup.php
+ appbeta/classes/model/tuan/newtuan/category.php
+ appbeta/classes/model/tuan/newtuan/tuanitem.php
+ appbeta/classes/model/tuan/newtuan/tuanitemstep.php
+ appbeta/classes/model/tuan/newtuan/tuanutils.php
+ appbeta/views/open/shop/managebar.php
+ appbeta/views/template2/template_nothing_sellerplatform.php
+ appbeta/views/tuan/signup/tuanmanagev2.php
+ appbeta/views/tuan/signup/tuansellerindex.php
+ appbeta/views/tuan/completeskuimg.php
+ appbeta/views/tuan/shopcommodity.php
+ appbeta/views/tuan/tuan_sub_list.php
+ public/js/platform/src/page-tuan-manage-material.js
+ public/js/platform/src/page-tuan-sub-app.js

**后台管理部份**

+ appbeta/classes/controller/tuan/test.php
+ appbeta/classes/controller/tuan/utadmin.php
+ appbeta/classes/model/tuan/newtuan/category.php
+ appbeta/classes/model/tuan/newtuan/tuanitem.php
+ appbeta/classes/model/tuan/newtuan/tuanitemstep.php
+ appbeta/classes/model/tuan/newtuan/tuanutils.php
+ appbeta/views/molitong/admin/tuan_nav.php
+ appbeta/views/tuan/admin/admin4seller.php
+ appbeta/views/tuan/admin/commodity.php
+ appbeta/views/tuan/admin/detail4admin.php
+ appbeta/views/tuan/admin/list4admin.php
+ appbeta/views/tuan/admin/list4seller.php
+ appbeta/views/tuan/admin/listcategory.php
+ appbeta/views/tuan/utadmin/content.php
+ 特尼前端相关文件

**PC端显示部份**

+ appbeta/classes/controller/tuan/config/route.php
+ appbeta/classes/controller/tuan/list.php
+ appbeta/classes/model/tuan/newtuan/category.php
+ appbeta/classes/model/tuan/newtuan/tuanitem.php
+ appbeta/classes/model/tuan/newtuan/tuanutils.php
+ appbeta/classes/model/tuan/tuanv2.php
+ appbeta/views/tuan/utadmin/content.php

**手机端显示部份**

+ appbeta/classes/controller/tuan/mact/admin.php
+ appbeta/classes/controller/tuan/mact/index.php
+ appbeta/classes/controller/tuan/mact/mobile.php
+ appbeta/classes/model/tuan/newtuan/category.php
+ appbeta/classes/model/tuan/newtuan/tuanitem.php
+ appbeta/classes/model/tuan/newtuan/tuanutils.php
+ appbeta/classes/model/tuan/tuan.php
+ appbeta/classes/model/tuan/tuanv2.php

###数据迁移计划
1. 初步定21日凌晨开始迁移.
2. 先在20日晚暂停商家发布商品,同时管理员不再审核商品.保证数据的恒定(此时的点击数的数据存在redis中).
3. 进行数据导入.这边大约会耗费3-4小时.
4. 对原有数据的点击数做落地操作.

###发布计划

1. 10-20 下午开始上线审核部份.
2. 10-21 凌晨数据迁移之后,上线PC,手机端显示部份
3. 上述发布结束,发布商家申请部份

###TODO

1. 确认数据团队,算法打点 -- 阿润
2. 移动端代码过一遍
3. 测试用例.
