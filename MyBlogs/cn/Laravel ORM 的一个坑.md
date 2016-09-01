Laravel ORM 的一个优化场景
---

Laravel 的 Eloquent 可能是最好的 PHP ORM 之一。不过，他也有所有 ORM 框架的通病，就是技术人员在不熟悉框架的情况下进行编码，很容易造成性能问题。之前遇到的一个应用场景。现在简化出来。

有两张表，一张暂定为 user 表，一张为 userinfo 表，现在有个需求是将特定用户抽取出来，然后从 userinfo 表中找到他们的数据，然后显示在页面上。

通常，在 Laravel 中，推荐的方法是使用 Eloquent 的关系函数，比如这样:

```
在 User Model 里:

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    public function userInfo()
    {
        return $this->hasOne('App\UserInfo');
    }
}

然后在 UserInfo 里:

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserInfo extends Model
{
    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
```

做一个一对一的关系。然后在需要获取数据的地方使用 *->userinfo* 的方法方便的得到数据:

```
<?php

namespace App\Http\Controllers;

use App\User;
use App\Comment;
use App\UserInfo;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
        $users = User::all();
        foreach ($users as $user) {
            ($user->userinfo);
        }
    }
}
```

这个无论在配置和使用上，都是非常简单的，但是，确存在一个大坑。我们可以在 *vendor/laravel/framework/src/Illuminate/Database/Query/Processors/Processor.php* 这个文件的 *processSelect* 方法中打一个 log。比如：

```
<?php

namespace Illuminate\Database\Query\Processors;

use Illuminate\Database\Query\Builder;

class Processor
{
    /**
     * Process the results of a "select" query.
     *
     * @param  \Illuminate\Database\Query\Builder  $query
     * @param  array  $results
     * @return array
     */
    public function processSelect(Builder $query, $results)
    {
        d($query->toSql());
        return $results;
    }
    ...
}
```

可以看到上述的语句的 SQL 执行情况('user 表中有两条数据， userInfo 也是两条数据'):

```
string(21) "select * from `users`"

string(100) "select * from `userinfo` where `userinfo`.`user_id` = ? and `userinfo`.`user_id` is not null limit 1"

string(100) "select * from `userinfo` where `userinfo`.`user_id` = ? and `userinfo`.`user_id` is not null limit 1"
```

可以看到，SQL 的执行次数是 (n + 1) 次，n 是 user 表中数据的行数。这种当数据很大的时候，基本就是对数据库的暴力攻击了。

所以这边的写法可以改成这样:

```
<?php

namespace App\Http\Controllers;

use App\User;
use App\UserInfo;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
        $users = User::all();
        $userIds = [];
        foreach ($users as $user) {
            $userIds[] = $user->id;
        }
        $comments = Comment::whereIn('user_id', $userIds)->get();
    }
}
```

这样的一个 SQL 查询结果就变成了:

```
string(21) "select * from `users`"

string(50) "select * from `comments` where `user_id` in (?, ?)"
```

顺利的把执行次数从 n + 1 下降到了 2，从而可以更好的应对之后的业务场景。不过，在代码的写法上，确实麻烦了很多。

这也确实是我不喜欢使用 ORM 而是喜欢手写 SQL 的原因。对于一个后端来说，SQL 应该是基本功，所以针对纯 SQL 的调优，手法和调试都方便很多。但是如果使用了 ORM 框架，尤其是在对一个 ORM 不熟悉的情况下使用了 ORM。往往就会产生这种性能上的问题。

不过，不得不说，Eloquent 确实太方便了，包括隐藏数据，转换数据格式等等，软删除等功能，真的很实用。
