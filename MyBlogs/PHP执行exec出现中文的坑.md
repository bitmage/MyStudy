PHP 调用 exec 执行中文命令的坑
===

####写在之前

首先，我们的项目中有这么一个需求，就是需要在发送请求时，需要调用 java 写的一个加密库。所以不可避免的会使用到 php 的 exec 方法执行 shell 命令。

一切都很正常，直到，出现了中文。哎。具体的 case 如下：

样例代码:

```php
<?php
    $cmd = 'java -jar sign-maker.jar mike messi';
    exec($cmd, $ret, $out);
    var_dump($ret);
    $cmd = 'java -jar sign-maker.jar 麦克 梅西';
    exec($cmd, $ret, $out);
    var_dump($ret);
```

其中，sign-maker.jar 就是我们按照第三方的加密协议的一个签名包(虽然也是我写的)，执行这段代码，我们可以得到如下的结果：

```
php index.php
array(1) {
  [0]=>
  string(80) "495cc9e9269265cc0e7d58940367976571a1c4fdb90bf842ee4ba703fb1a554abf0772218e29d3d8"
}
array(2) {
  [0]=>
  string(80) "495cc9e9269265cc0e7d58940367976571a1c4fdb90bf842ee4ba703fb1a554abf0772218e29d3d8"
  [1]=>
  string(80) "e442a87d369a1a3c610bb2d18bd38fdad3b52644ab0ef86a21b57a5d0d75cb8dbf0772218e29d3d8"
}
```

可以看到，我们已经生成了两个 sign 值。但是，在传输过程中，对面居然报了 sign 无效的错误。觉得很奇怪，第一个 sign 是正确的，但是第二个就是败了。于是我们在终端中手动输入了这个命令:

```bash
└─[$]> java -jar sign-maker.jar 麦克 梅西
92144a18e9f75ec2e257c9bb15a05825a706064445b9492efd065dfd6c8b38d0bf0772218e29d3d8
```

发现 sign 果然不同。所以第一反应是字符编码的问题，尝试了 utf8encode，iconv 等等方法转换字符，但是都是无功而返。最后定为到环境变量的问题上。

####解决办法

解决办法先上，在 exec 的命令前首先指定字符集:

```
<?php
    $set_charset = 'export LANG=en_US.UTF-8;';
    $cmd = 'java -jar sign-maker.jar mike messi';
    exec($set_charset.$cmd, $ret, $out);
    var_dump($ret);
    $cmd = 'java -jar sign-maker.jar 麦克 梅西';
    exec($set_charset.$cmd, $ret, $out);
    var_dump($ret);
```

这样即可。

####如何定位
在尝试了 php 的字符转化的方法之后，确实可以断定不是 PHP 的问题，所以最后转移到，php 中 exec 的环境上。我们直接使用如下代码确定 exec 时的环境变量:

```
<?php
    system('env | grep LANG');
```

结果在服务器上发现并没有返回值。而在终端中，执行 *env | grep LANG* 却有如下输出:

```bash
➜  ~  env | grep LANG
LANG=en_US.UTF-8
```

所以即可断定，是环境中语言设置的问题，遂使用上述解决办法解决。

####BTW
exec 中的那个 $ret 的结果居然是 append 的。。。一开始还不知道，结果在一个循环中调用的时候，一直使用 $ret[0] 作为结果，哎。都是泪，这个 bug 调了好久才知道。

**PS:感谢今天不请自来协助加班的兄弟们。**
