Laravel Session 失效 Case
===

这是年前碰到的一个问题，一直拖到现在才有空写记录。

因为公司内部准备转 Laravel 开发框架，所以势必会有一个学习的过程。我对 PHP 基本是一个入门的级别，所以对框架还是陌生的，有个同事遇到一个问题，就是按照官方的示例，写 Session 不成功。

即在 *app/Http/route.php* 里面，写如下的代码:

```
Route::group(['prefix' => 'Test', 'namespace' => 'Test'], function() {
    Route::get('/', function() {
        Session::set('mike', 'mike');
        d(Session::get('mike')); // d($value) 就是 var_dump 出来
    });
});
```

用来做 Session 的判定。但是，不论在第一次执行之后，将 set 方法注释之后，Session 中就没有了内容。这个很奇怪。因为 d 方法并没有直接退出。

因为推行 Laravel 框架的同事，之前在 Laravel5.1 的版本上实现了这个功能，也不能叫实现吧，就是重新测试了下，发下在他的代码中是可行的。他的代码如下：

```
Route::get('/', function() {
    session()->set('fff', 'fff');
    d(session()->get('fff'));
});
```

粗一看，除了没有指定 group 和 prefix，其他都是一样的。所以第一反应是版本问题。修改了 Composer 中的版本之后，发现问题还是没有解决。所以只能是老办法。看源码，不得不说，Laravel 在错误处理上还有代码质量上还是很高的。

最简单的办法，就是抛一个异常看看调用栈。这是我们新版本的错误栈：

```
in routes.php line 16
at RouteServiceProvider->{closure}()
at call_user_func_array(object(Closure), array()) in Route.php line 158
at Route->runCallable(object(Request)) in Route.php line 137
at Route->run(object(Request)) in Router.php line 703
at Router->Illuminate\Routing\{closure}(object(Request))
at call_user_func(object(Closure), object(Request)) in Pipeline.php line 52
at Pipeline->Illuminate\Routing\{closure}(object(Request))
at call_user_func(object(Closure), object(Request)) in Pipeline.php line 102
at Pipeline->then(object(Closure)) in Router.php line 705
at Router->runRouteWithinStack(object(Route), object(Request)) in Router.php line 678
at Router->dispatchToRoute(object(Request)) in Router.php line 654
at Router->dispatch(object(Request)) in Kernel.php line 246
at Kernel->Illuminate\Foundation\Http\{closure}(object(Request))
at call_user_func(object(Closure), object(Request)) in Pipeline.php line 52
at Pipeline->Illuminate\Routing\{closure}(object(Request)) in CheckForMaintenanceMode.php line 44
at CheckForMaintenanceMode->handle(object(Request), object(Closure))
at call_user_func_array(array(object(CheckForMaintenanceMode), 'handle'), array(object(Request), object(Closure))) in Pipeline.php line 124
at Pipeline->Illuminate\Pipeline\{closure}(object(Request))
at call_user_func(object(Closure), object(Request)) in Pipeline.php line 32
at Pipeline->Illuminate\Routing\{closure}(object(Request))
at call_user_func(object(Closure), object(Request)) in Pipeline.php line 102
at Pipeline->then(object(Closure)) in Kernel.php line 132
at Kernel->sendRequestThroughRouter(object(Request)) in Kernel.php line 99
at Kernel->handle(object(Request)) in index.php line 52
```

这是旧版本的错误栈:

```
in routes.php line 15
at RouteServiceProvider->{closure}()
at call_user_func_array(object(Closure), array()) in compiled.php line 7843
at Route->runCallable(object(Request)) in compiled.php line 7830
at Route->run(object(Request)) in compiled.php line 7486
at Router->Illuminate\Routing\{closure}(object(Request))
at call_user_func(object(Closure), object(Request)) in compiled.php line 9593
at Pipeline->Illuminate\Pipeline\{closure}(object(Request))
at call_user_func(object(Closure), object(Request)) in compiled.php line 9575
at Pipeline->then(object(Closure)) in compiled.php line 7487
at Router->runRouteWithinStack(object(Route), object(Request)) in compiled.php line 7475
at Router->dispatchToRoute(object(Request)) in compiled.php line 7460
at Router->dispatch(object(Request)) in compiled.php line 2307
at Kernel->Illuminate\Foundation\Http\{closure}(object(Request))
at call_user_func(object(Closure), object(Request)) in compiled.php line 9593
at Pipeline->Illuminate\Pipeline\{closure}(object(Request)) in Debugbar.php line 49
at Debugbar->handle(object(Request), object(Closure))
at call_user_func_array(array(object(Debugbar), 'handle'), array(object(Request), object(Closure))) in compiled.php line 9585
at Pipeline->Illuminate\Pipeline\{closure}(object(Request)) in OAuthExceptionHandlerMiddleware.php line 36
at OAuthExceptionHandlerMiddleware->handle(object(Request), object(Closure))
at call_user_func_array(array(object(OAuthExceptionHandlerMiddleware), 'handle'), array(object(Request), object(Closure))) in compiled.php line 9585
at Pipeline->Illuminate\Pipeline\{closure}(object(Request)) in compiled.php line 12957
at ShareErrorsFromSession->handle(object(Request), object(Closure))
at call_user_func_array(array(object(ShareErrorsFromSession), 'handle'), array(object(Request), object(Closure))) in compiled.php line 9585
at Pipeline->Illuminate\Pipeline\{closure}(object(Request)) in compiled.php line 11551
at StartSession->handle(object(Request), object(Closure))
at call_user_func_array(array(object(StartSession), 'handle'), array(object(Request), object(Closure))) in compiled.php line 9585
at Pipeline->Illuminate\Pipeline\{closure}(object(Request)) in compiled.php line 12694
at AddQueuedCookiesToResponse->handle(object(Request), object(Closure))
at call_user_func_array(array(object(AddQueuedCookiesToResponse), 'handle'), array(object(Request), object(Closure))) in compiled.php line 9585
at Pipeline->Illuminate\Pipeline\{closure}(object(Request)) in compiled.php line 12631
at EncryptCookies->handle(object(Request), object(Closure))
at call_user_func_array(array(object(EncryptCookies), 'handle'), array(object(Request), object(Closure))) in compiled.php line 9585
at Pipeline->Illuminate\Pipeline\{closure}(object(Request)) in compiled.php line 2982
at CheckForMaintenanceMode->handle(object(Request), object(Closure))
at call_user_func_array(array(object(CheckForMaintenanceMode), 'handle'), array(object(Request), object(Closure))) in compiled.php line 9585
at Pipeline->Illuminate\Pipeline\{closure}(object(Request)) in Request.php line 95
at Request->handle(object(Request), object(Closure))
at call_user_func_array(array(object(Request), 'handle'), array(object(Request), object(Closure))) in compiled.php line 9585
at Pipeline->Illuminate\Pipeline\{closure}(object(Request))
at call_user_func(object(Closure), object(Request)) in compiled.php line 9575
at Pipeline->then(object(Closure)) in compiled.php line 2254
at Kernel->sendRequestThroughRouter(object(Request)) in compiled.php line 2237
at Kernel->handle(object(Request)) in index.php line 68
```

可以很清晰的看到很多次的调用 **call_user_func** 这个函数，因为之前也造过轮子，很敏感的就知道这是在动态加载类。这种动态加载的地方，通常也就是配置文件中定义。所以就查看了 Laravel 的配置文件。config 下的。并没有发现不一样的地方。很是失望。

然后只能全文搜索 class 类名，来确定代码的地址,这边，我就直接搜索了 StartSession 这个类，因为我们遇到的确实也是 Session 的问题。

果不出所料，在 app/Http/Kernel.php 中看到了这个类:

```
<?php

namespace App\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    protected $middleware = [
        \Illuminate\Foundation\Http\Middleware\CheckForMaintenanceMode::class,
    ];

    protected $middlewareGroups = [
        'web' => [
            \App\Http\Middleware\EncryptCookies::class,
            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
            \Illuminate\Session\Middleware\StartSession::class,
            \Illuminate\View\Middleware\ShareErrorsFromSession::class,
            \App\Http\Middleware\VerifyCsrfToken::class,
        ],

        'api' => [
            'throttle:60,1',
        ],
    ];
```

同理，我去看了老版本的代码，发现了这边确实是不同的:

```
<?php

namespace App\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    protected $middleware = [
        \Illuminate\Foundation\Http\Middleware\CheckForMaintenanceMode::class,
        \Illuminate\Cookie\Middleware\EncryptCookies::class,
        \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
        \Illuminate\Session\Middleware\StartSession::class,
        \Illuminate\View\Middleware\ShareErrorsFromSession::class,
        \LucaDegasperi\OAuth2Server\Middleware\OAuthExceptionHandlerMiddleware::class
    ];

    protected $routeMiddleware = [
        'auth' => App\Http\Middleware\Authenticate::class,
        'auth.basic' => Illuminate\Auth\Middleware\AuthenticateWithBasicAuth::class,
        'guest' => App\Http\Middleware\RedirectIfAuthenticated::class,
        'role' => App\Http\Middleware\Role::class,
        'permission' => App\Http\Middleware\Permission::class,
        'csrf' => App\Http\Middleware\VerifyCsrfToken::class,
        'oauth' => \LucaDegasperi\OAuth2Server\Middleware\OAuthMiddleware::class,
        'oauth-user' => \LucaDegasperi\OAuth2Server\Middleware\OAuthUserOwnerMiddleware::class,
        'oauth-client' => \LucaDegasperi\OAuth2Server\Middleware\OAuthClientOwnerMiddleware::class,
        'check-authorization-params' => \LucaDegasperi\OAuth2Server\Middleware\CheckAuthCodeRequestMiddleware::class
    ];
```

可以看到，这边直接将 Session 和 Cookie 直接写进了默认加载的 middleware 里面，所以在没有指定 middleware group 的情况下，依旧能读写 Session。

所以解决办法也很简单。就是在 route 中添加 web 中间件即可。如最上面的代码修改成:

```
Route::group(['middleware' => 'web', 'prefix' => 'Test', 'namespace' => 'Test'], function() {
    Route::get('/', function() {
        Session::set('mike', 'mike');
        d(Session::get('mike')); // d($value) 就是 var_dump 出来
    });
});
```

就好了。
