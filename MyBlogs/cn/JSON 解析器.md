JSON 解析器
---

这篇博客主要是最近开始玩 C，所以准备找个东西练手，突然发现，顺手写个 JSON 解析器吧。于是就开始了。

相对于其他比较成熟的上层语言。C 主要的问题就是没有基础的数据结构，而且相对于弱类型语言而言，C 的类型在解析的时候有个类型转换的坑。但是相对于其他的强类型语言而言，C 又有一个好处，那就是没有一个 void* 解决不了的问题，如果有，那就用两个。

不过相对于工作时的清闲，现在上课的时候确实没有什么时间进行额外的代码编写。所以断断续续写了一周多。

主要的使用方法就是：

```
struct value *val = parse_new();
char *json1 = "{\"fff\":[2,4,5,6]}";

parse(val, json1);

map_display(*(struct map*)val->value);

struct value key;
key.type = STRING;
key.value = (void*)"fff";

list_display(*(struct list*)(map_find(*(struct map*)val->value, key)->value));
```

首先初始化一个 val 对象作为头，然后直接调用 parse 函数。这样就可以把数据解析完成了。

其实还是挺简单的。主要的目的也只是检查自己对 C 语言的熟悉程度。目前也只是个简单的版本。之后会慢慢的进行优化。比如目前就不支持 null, 非十进制数字解析等等。

说道 JSON 的解析，其实 JSON 本身的格式非常的简单。按照 官网的说法，状态转换也无外乎以下几种：

> ![Object](http://json.org/object.gif)

> ![Array](http://json.org/array.gif)

> ![Value](http://json.org/value.gif)

> ![String](http://json.org/string.gif)

> ![Number](http://json.org/number.gif)

相对于细节上，整体看下来的话其实更简单：`{ "key": value }` 和 `[ value ]`，而 value 有可能是 list，和 map 两种数据结构。 而判断就是第一个字符是否是 '[' 或者 '{'。然后就是一个递归向下的解析。

所以总体而言还是简单的。不过写下来的第一个感觉还是觉得 makefile 很棒，通过不同的规则，可以实现粒度为文件的编译控制。不过因为失误（Java 的 import 习惯），导致了一个环形依赖的错误。

**不足:**

比如，在 list.c 和 map.c 中有 list_display 和 map_display 两个函数，但是，我会在 value.c 中的 value_display 中进行调用。因为需要根据 value->type 的不同，使用不同的 display 方式，所以需要在 value.h 中 include "list.h" 和 "map.h"，但是在这两个文件中，我也需要 include "value.h" 这就带来了环形依赖。解决的办法就是额外增加一个 utils.h 的模块，主要作用就是根据 value->type 的不同来采取不同的展示方法。

同时，前一篇的 [C OOP 编程](https://mikecoder.cn/post/191)也提到了另一个解决方案，就是通过函数指针来做。这个会在之后完成。

**TODO:(闲的时候再做)**

1. 支持 JSON 所有的特性，比如各种数字
2. 尽量使用流的方式进行读取，而非现在的先读入再解析
3. 优化基础数据结构，同时优化解析后的读取方式

**JSON 吐槽的地方**

因为历史原因，JSON 是基于 JavaScript 发展起来的，所以也带上了明显的 JavaScript 标签。有一个非常严重的错误就是，在 json 中，并没有对 number 这个作出明确定义。比如，在 C 中，int 对应的 32 位整形变量。但是 JSON 不管啊，不管多长多大的数字，通通都是 int，甚至远远超出 long long 的范围都不管。

所以，会有这么个现象，在联通 APP 上充值写上 9*10^100 时，使用微信付款，最后微信只需要付款 INT_MAX 即宣告交易成功。（支付宝就么有这个 bug）。如果使用 XML 就有机会减少此类事情的发生。而且在网络上传输的数据，我还是觉得 String 比 number 类型好。

如果说要我选一个通用性更高的协议或者说更完备的序列化手段，**[messagepack](https://msgpack.org/)** 明显更好。
