团购重构代码规范
---
####controller中代码规范
1. 方法体下为所有参数获取.如`$id = request['id'];`类似语句,要求为不可空行.
2. 或取参数之后为数据获取,先要求申明传入view层的数据名称,如`$widget = array();`,然后对其中的部分字段进行赋值.示例代码如下:

    ```
    $widget = array();
    $widget['data'] = getTuanListData($widget['data']); //获取团购列表数据
    ```

    > 其中获取的代码团购列表数据的代码如下,有使用cache和不用cache的两种情况

    ```
    function getTuanListData($widget['data']){
        $widget['data'] = $self::getData(); // 获取的为主体数据
        $widget['data'] = $self::filterData($widget['data']); // 如果需要进行数据的筛选添加,则在这完成.
        return $widget['data'];
    }
    ```

    > 如果需要保存cache,和判断是否有cache,则可以按照如下方法:

    ```
    function getTuanListData($widget['data']){
        if(!($widget['data'] = cache.get(***)){
            $widget['data'] = self::getData();
            $widget['data'] = self::filterData($widget['data']);
            cache.set('xx',$widget['data']);
        }
        return $widget['data'];
    }
    ```

    > 以上为一个代码块,尽可能缩短controller代码长度

3. 之后空行,然后是前端的资源载入和模板载入.如下代码:

    ```
    $this->template->set_filename('template2/template_nothing_sellerplatform');
    $this->template->title = "报名后台".$GLOBALS['MGJ_TITLE_SUFFIX'];
    $this->add_css("page-adminseller.css",'css/seller');
    $this->add_script("page-freetuanseller.js", 'foot');
    ```

4. 最后是数据的传入,如下:

    ```
    Zwidget::zadd('tuan/signup_index', $widget, 'body');
    ```

**PS: 尽量保证action方法中代码长度简短,获取数据和渲染数据的方法名务必加上注释.临时添加的需求代码,如果有时效性可以写在action中,但需要写明失效时间,方便删除.如果为长久添加,务必遵守规范**

####model中代码规范
1. cache全写在controller中,不应该出现在model层中,除非业务上用model层实现会减少改动.
2. 进行参数校验
3. 所有接口留文档,要求有一个返回值范例,即返回结果的dd输出,方便其他人调用时了解返回值,和确认参数类型,建议如下格式:

    ```
    /**
     * 添加评价
     * @param $shopRate
     *      array(4) {
     *          'extra' => string(11) "hello world"
     *          'comment' => string(11) "hello world"
     *          'orderId' => int(123)
     *          'rateId' => int(1234)
     *          'serviceScore' => int(4)
     *      }
     * @return Array
     *      array(3) {
     *          'comment' => string(11) "hello world"
     *          'userId' => int(123)
     *          'rateId' => int(1234)
     *      }
     */
    public function addRate($shopRate){
        ...
    }
    ```


