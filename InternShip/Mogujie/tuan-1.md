团购代码整理(一)
---

###团购展示页面分类
1. 用户前端页面,即http://www.mogujie.com/tuan
2. 商家后端页面,即http://www.mogujie.com/tuan/signup/signupindex
3. 团购管理员页面,即http://www.mogujie.com/tuan/signup/admin4seller
4. 团购活动页面,在route.php中有具体的描述
5. 团购wap界面,统一位于/controller/tuan/mact/下.

###现有代码结构
之前以为,店铺页面下的团购管理是在shop的controller里面,后来发现其实还是在tuan下面
现在controller中,有关后台的controller为`admin.php(团购后台)`,`audit.php(暂不清除用途,暂不考虑)`,`signup.php(商家报名)`
以此作为线,往下寻找model层代码.可以发现,现有model接口有如下几个:

> **signup.php - action_index**
>
> + Model_FreeTuan_SellerLogin::getTbBindByUserId($userId<int>);
> + Model_Tuan_Seller::getSellerConnection($userId<int>);
> + Model_Tuan_Request::getGroupCnt($userId<int>);
> + Model_Tuan_Request::getReqestList($userId<int>, $status, $page, $tuan_prepage<int>);

> **signup.php - action_toblacklist**
>
> 这个方法比较特殊,**直接**在controller中调用了SQL操作.

> **signup.php - action_getsellerinfo**
>
> + Model_Tuan_Seller::getSellerConnection($userId<int>);
> + Model_Trade_Item_Util::get_write_db();
> + Model_Tuan_Seller::delTuanSellerCache($userId<int>);
> + Model_Tuan_Seller::getSellerConnection($userId<int>);
> + Model_User::instance()->user($userId<int>);

> **signup.php - action_info**
>
> 方法也是比较特殊,直接进行跳转.

> **signup.php - action_update**
>
> + Model_Tuan_Request::getRequestById($rid<int>);
> + Model_Tuan_Request::updateRequest($data<array()>);

> **signup.php - action_pass && action_recover**
>
> + Model_Tuan_Request::pass_tuan($requestId<int>);
> + Model_Tuan_Request::recover_tuan($requestId<int>);

> **signup.php - action_deny && action_online && action_list**
>
> + Model_Tuan_Seller::getSellerConnection($userId);
> + Model_Tuan_Request::deny_tuan($requestId, $cause);
> + Model_Tuan_Request::getRequestById($requestId);
> + Model_Infocenter_Sysmsg::instance()->add_sys_msg($senderId,$userId,$msg);
> + Model_Tuan_Request::online($requestId);
> + Model_Tuan_Request::getReqestList($userId, $status, $page);


...

发现其中主要的Model层为如下:

> + Model_Tuan_Seller 对应的 TuanSellers表
> + Model_Tuan_Qualifications 对应的 TuanQualifications表
> + Model_Tuan_Admin 对应的 Tbao主表
> + Model_Tuan_Tuan 对应的 Tbao主表
> + Model_Tuan_Qualifications 对应的TuanQualifications
> + Model_Tuan_AdminLog 对应TuanAdminLog
> + Model_Tuan_Category
> + Model_Tuan_Sellerpunish
> + Model_Tuan_Request
> + Model_Tuan_Tuanv2
> + Model_Tuan_Tuanstat
> + Model_Tuan_Brands
> + Model_Tuan_Tuanmulti

团购相关的数据库(只取zcms下的数据库表):

> + TuanEvent 团购活动表 - 目前在使用
> + TuanGuideInfo 团购活动信息 - 在使用
> + TuanComplaint 团购投诉表 - 未知(最后一次更新2013年11月)
> + TuanSellers 团购卖家表 - 在使用 最后更新2014年3月
> + TuanAdminLog 管理员操作记录 - 在使用
> + Tbao 主表 - 在使用,22万数据
> + TuanCouponInfo 比较奇怪,只有三条数据
> + TuanBrands 团购的品牌,目前有75数据,最近更新13年10月
> + TuanCouponList 像一个验证码的存储,目前有5000+数据,最近更新时间11年8月
> + TuanEventSubTheme 团购主题,目前在使用,64数据
> + TuanEventSubThemeRelate 关系表,1133数据
> + TuanGroup 58条数据,在使用
> + TuanIndexCms 172数据,最近更新时间12年七月
> + TuanMessageInfo 2277数据,最近修改时间13年八月
> + TuanMobileActivity 手机活动,24数据,最近更新14年7月,正在使用
> + TuanNewSalesStat 在使用 约1611486数据
> + TuanOrders 不使用,团购交易表,最近使用2013年11月
> + TuanRequest 团购请求表,不使用,数据约为7万4
> + TuanSalesStat 团购销售情况,7万左右数据,最后更新13年10月
> + TuanSellerPunish 在使用,19数据,商家惩罚记录
> + TuanSignupFail 提交失败记录,9万数据,最近更新13年11月

###仍在mogujie主库的表(没有在zcms中的)

> + TuanMulti
> + TuanTag
> + TuanSellers
> + TuanSnapshot
> + TuanGoodTrack
....

###接下来的计划
团购后端重构代码主要是在signup.php,admin.php两个文件中.在迁库之后，需要改动上述提到的几个Model层接口.对应的view层也需要进行相应的改动.

目前看,既要的改动在于废弃代码的删除和逻辑重构.Model层数据返回格式需要和之前保持一致.不是很清楚还有没有其他业务方调用之前的团购接口.

###对于团购中可能会出现的各种的特殊需求
我觉得可以从商品的维度进行涉及,商品有价格,商标,类目...几个属性,还有针对特定商品的规则,可以先预先加入if判断语句,至于其中的内容,可以通过配置的方式实现.


可以新建如下一张表:

```
create table roles (
    type int,
    judge int, (1表示大于,2表示等于...)
    content int,(都是对应id)
    ... log,id等字段
)
```

type表示规则类型,从0开始如0 - 类目, 1 - 价格,然后content表示内容,即在程序代码里,可以通过一个嵌套循环,实现的所有规则的遍历.通过不同规则的设置,可以实现不同活
动,和不同时期的团购展现.

这样修改之后,也就要对应的修改下Tbao的接口,接口返回值务必是包含所有信息的Item,同时尽可能全为int,可以实现如上的一个效果.




