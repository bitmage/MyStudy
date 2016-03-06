在 Dingo/Api 中实现自定义错误回复
===
目前在用 Laravel 做一个 APP 后台的开发。因为都是 API，所以需要定义个通用的通信协议。这个比较好解决，而且我之前的思路也都有，具体可以看这篇:[设计自认为优雅的接口（上）](http://mikecoder.cn/?post=134)。这里就不再废话了。

考虑到之后的通用性和可维护性，我们决定使用 Dingo/Api 这个插件进行 API 的管理，开发。所以，理所当然的遇到了这么一个应用场景。

这是使用 Dingo/Api 之后，标准的返回值:
```
url: http://www.ehs.com/api/test/index
{
  "status_code": 100,
  "message": "成功",
  "timestamp": 1457267879,
  "data": "eyJmZmYiOiJmZmYifQ==",
  "sign": "d550edf4061cd60a404cd18350a1dbf299e4e69502c5be64de58861565c8e9ea"
}
```

但是，如果代码中出现了错误，或者说异常吧。常见的就是使用了未定义的方法，或者什么乱七八糟的错误。那么，Dingo/Api 会接管所有的异常，统一返回一个通用 json，以下是开了 **API_DEBUG** 之后遇到的返回情况:
```
url: http://www.ehs.com/api/test/index
{
  "message": "Undefined variable: code2",
  "status_code": 500,
  "debug": {
    "line": 38,
    "file": "/Users/Mike/Workspace/project/ehs/ehs-web/bootstrap/function.php",
    "class": "ErrorException",
    "trace": [
      "#0 /Users/Mike/Workspace/project/ehs/ehs-web/bootstrap/function.php(38): ..."
      "#1 /Users/Mike/Workspace/project/ehs/ehs-web/app/Http/..."
      "#2 [internal function]: App\\Http\\Controllers\\Api\\V1\\Test\\TestController->index()",
      "#3 /Users/Mike/Workspace/project/ehs/ehs-web/vendor/laravel...",
      ...
      "#57 /Users/Mike/Workspace/project/ehs/ehs-web/public/index.php(58) ...",
      "#58 {main}"
    ]
  }
}
```

当然，如果线上的话，关闭 **API_DEBUG** , 就是这样的返回值:

```
url: http://www.ehs.com/api/test/index
{
  "message": "Undefined variable: code2",
  "status_code": 500
}
```

这样看上去没什么问题。因为这边 **status_code** 是比较规范的。对于 PHP 来说，直接 json_decode 之后，并没有什么难办的地方。但是对面安卓和 IOS 则是使用的强类型语言。尤其是 Java，需要对每一个 Json 对象进行新建，然后序列化。所以，这种格式不统一的返回结果，是无法接受的。

那么问题来了，如何修改 Dingo/Api 的错误返回值。首先，依旧是上**stackoverflow**，并没有什么实质性的进展，然后就是世界上最大的同性交友网站:**GITHUB**,果不其然，找到了同样的业务场景的提问，然后回答却是一盆冷水。[作者对该业务场景的回答](https://github.com/dingo/api/issues/390), 还有[这个给我启发的 issue](https://github.com/dingo/api/issues/411)。也是蛋疼。

所以就是需要自己 Hack 了。

当然，通过跟踪代码，可以很快的找到 Dingo/Api 中的错误处理代码，但是，并不建议直接修改这边的代码，因为，之后可能还是会通过 composer 来更新项目的依赖关系，如果直接修改，那么在之后的维护中，就会有不确定因素。增加了系统的风险。所以放弃。

解决方法也很简单。首先就是需要把所有的异常信息归总到一个地方。这个可以通过很贱的配置就可以达到。我的做法就是在**routes.php**里面加上这么一段代码，接管所有的 Exception:
```
// 将所有的 Exception 全部交给 App\Exceptions\Handler 来处理
app('api.exception')->register(function (Exception $exception) {
    $request = Illuminate\Http\Request::capture();
    return app('App\Exceptions\Handler')->render($request, $exception);
});
```

然后就是 Handler 中进行判断了。首先就是找到 API 接口的 request,和正常访问的 request 的区别，这个很简单，dd 一下，就知道了。这有坑，建议不要直接 dd($request)，如果电脑好，那也无所谓。

上结论就是可以通过判断如下代码进行判断:
```
public function render($request, Exception $e)
{
    if ($request->server->get('API_PREFIX')) {
        return APIReturn(ERROR, ' '.$e->getMessage(), ['code' => $e->getCode()]);
    }
    return parent::render($request, $e);
}
```

这样，当 API 访问出现异常的时候，就是如下的返回值:
```
url: http://www.ehs.com/api/test/index
{
  "status_code": 200,
  "message": "Message:Fatal error: Call to undefined function App\\Http\\Controllers\\Api\\V1\\Test\\ddd()",
  "timestamp": 1457270046,
  "data": "eyJjb2RlIjowfQ==",
  "sign": "8aef6cbdbc84a570f48ccb02d89c363dbc0263468682313fa1cd873fa338b161"
}
```

至此，暂时解决了这个蛋疼的小问题。接下来就是 API 中最麻烦的状态维持，就是 APP 的用户登录。这个，虽然有 oath2.0这样的标准在这边，但是，可能还是会再调研几个其他的解决办法。方便开发和维护吧。尽可能的简答，是我一直想做的。越简单越好。
