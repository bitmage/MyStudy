如何实现 PHP 中的 Router
---

因为最近在写自己的 MFramework, 算是一个 PHP 的 web 框架吧。所以这个 Router 就是首先的一步。

首先看下 Kohana 框架的路由编写方式:

```
Route::set('blogs', 'blogs/((/)(/))')->defaults(
        array (
            'controller' => 'blog',
            'action'     => 'list',
            'limit'      => 10 ,
            'page'       => 0
            )
        );
```

然后是 Zend 的路由设置, 建议阅读他的官方文档:[Zend Router](https://framework.zend.com/manual/2.2/en/modules/zend.mvc.routing.html):

```
$route = Method::factory(array(
    'verb' => 'post,put',
    'defaults' => array(
        'controller' => 'Application\Controller\IndexController',
        'action' => 'form-submit',
    ),
));
```

还有 thinkphp 的路由，不过，TP 为了简化开发，已经把路由固定死，常规的开发，只能根据他的规则来进行一些开发。

最后就是 Laravel 的路由设置。

```
Route::get('user/{id}/{name}', function($id, $name) {
    dd(1);
})
->where(array('id' => '[0-9]+', 'name' => '[a-z]+'))
```

可以看到的一点，就是，路由的基本规范就是能将不同的 Http 请求方法区别开来，最好还是能对参数进行一些预处理。

最后，以 Laravel 为例，写一下基本的 Router 思路。

对于一个 Router, 首先就是要有六个基本的方法，就是用来设置 GET,POST,PATCH,DEL,PUT,ANY 这些访问的方法。通常而言，都会写成六个 function。不过这边我给一个,利用魔术方法的优雅的实现思路，而且可以极大的扩展自定义协议。代码如下:

```
/**
 * @method static get(string $route, Callable $callback)
 * @method static post(string $route, Callable $callback)
 * @method static put(string $route, Callable $callback)
 * @method static delete(string $route, Callable $callback)
 * @method static options(string $route, Callable $callback)
 * @method static head(string $route, Callable $callback)
 */
public static function __callstatic($method, $params) {
    $uri = dirname($_SERVER['PHP_SELF']).'/'.$params[0];
    $callback = $params[1];

    array_push(self::$routes, $uri);
    array_push(self::$methods, strtoupper($method));
    array_push(self::$callbacks, $callback);
}
```

基本上，当调用静态方法的时候，都会访问这个方法。所以，我们只需要对此进行一些处理就好，将结果保存到内部的一个数组中,为了加快搜索速度，可以用 HTTP-METHOD => URL 的思路进行处理。

所以当,执行如下代码时:

```
Route::get('/fuck', function() {
    echo 'fuck world!';
});

Route::dispatch();
```

会生成一个路由表，即 [GET] => ['/fuck'] => [function] 的一个 map，在最后 dispatch 的时候进行查找。

然后就是参数的校验。这边就是纯粹的自定义了。不过从上述的几个框架上看，基本都是对纯数字和纯英文做一个校验，其实也就是一个正则的表达式。这边也只需要自定义几个参数，以 num 为例。

```
public static $patterns = array(
    ':any' => '[^/]+',
    ':num' => '[0-9]+',
    ':all' => '.*'
);

// $route = '/fuck/(:num)';

$searches = array_keys(static::$patterns);
$replaces = array_values(static::$patterns);
if (strpos($route, ':') !== false) {
    $route = str_replace($searches, $replaces, $route);
}
```

这样，就可以使用正则的方式匹配了。有一说一。要是增加自定义，也是类似的方式。将用户自定义的正则直接动态生成一个函数。然后调用。

其余的一些，还是需要结合整体的框架来。比如权限认证，控制流等等。

不过，在自己编写框架的时候，发现 Laravel 的设计确实合理。所以很大程度上，都是按照 Laravel 的思路在写一个简单的框架。

推荐这个项目:[https://github.com/noahbuscher/Macaw](https://github.com/noahbuscher/Macaw)

简答的 PHP Router，只有150多行的代码，但是麻雀虽小，五脏俱全。特别是那个魔术方法的，对于一个兼职写代码的人来说，确实眼前一亮的感觉。
