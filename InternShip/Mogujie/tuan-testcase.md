团购重构测试用例

###团购后台管理
1. 团购商品审核

 + 初审状态 - 只提供通过,编辑,拒絶,分类转移,批量通过,批量拒絶
 + 复审状态 - 修改价格,批量通过/拒絶,分类转移,编辑,拒絶
 + 素材审核与排期 - 编辑,拒絶,分类转移,批量通过/拒絶/排期,排期,通过
 + 正在上线 - 编辑
 + 已结束 - 编辑(回退是否可以作为重新上线?)

> 在排期通过之后,数据将会写入TuanItem表,同时,开始和TuanItemStep保持同步.
>
> 商品图片的修改,图片上传主站等功能测试

2. 商家报名

+ 显示正确的待报名商品
+ 显示正确的分组
+ 报名之后,修改和显示功能
+ 当步骤变为素材审核和排期得时候,可以进行图片的修改.

3. 团购活动/分组管理

+ 活动/分组增加
+ 活动/分组修改
+ 活动的正常显示

4. 团购显示

+ 现有调用的转换接口,是否显示正常
+ 点击进入之后,参与活动数是否增加

5. 手机端显示

+ 手机端活动显示
+ 手机端商品显示


整理外部的其它调用,Model_Tuan_Tuan中如下方法需要重写:

 + Model_Tuan_Tuan::incrTbaoTotal(urltoid($bid));
 + Model_Tuan_Tuan::get_today_tuans_list_for_mobile($page, $day, $sort, $type, self::TUAN_LIST_PREPAGE_VALUE);
 + Model_Tuan_Tuan::get_list($category, $page, $day, $sort);
 + Model_Tuan_Tuan::get_lastest_tuan_info($tradeItemId);
 + Model_Tuan_Tuan::getTuanInfoByItemid($tradeItemId);
 + Model_Tuan_Tuan::isShopTuans($userId);
 + Model_Tuan_Tuan::get_tuans_by_list($list,true);
 + Model_Tuan_Tuan::convert_tuan_info_for_mobile($val);
 + Model_Tuan_Tuan::isOnlineTuan($tradeItemId);

説明之前的Model_Tuan_Tuanv2推广效果不好...
