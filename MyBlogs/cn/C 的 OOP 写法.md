C 的假装 OOP 写法
---

之前微博上说 C 的一个好处就是没有什么是一个 void* 解决不了的，然后因为自己用 C 写一个小程序，遇到了一个问题，就是因为 C 是强类型，但是如果需要写一个相对通用的数据结构。这个稍微有点麻烦。

比如说，hashmap，我们常用的都是 `<string, string>` 的一个 map，于是，相对来说的话，hash 函数比较容易。但是，如果是需要实现 Java 那样的通用数据结构呢，是不是需要对每个特定的数据对象写一个？

所以这边就扯到了这么个比较好玩的技巧。

先看下效果：

+ main.c
```
#include "value.h"
#include "value_a.h"
#include "value_b.h"

int main(void)
{
	struct value v1;
	value_a_instance(&v1);
	v1.set(&v1, (void*)"hello");
	v1.display(&v1);
	printf("%lld\n", v1.hash(&v1));

	struct value v2;
	value_b_instance(&v2);
	double a = 2.0f;
	v2.set(&v2, (void*)&a);
	v2.display(&v2);
	printf("%lld\n", v2.hash(&v2));
	printf("%lf\n", *(double*)v2.data);

	return 0;
}
```

+ value.h
```
#ifndef VALUE_H
#define VALUE_H 1

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

struct value {
	void (*display)(struct value*);
	uint64_t (*hash)(struct value*);
	void (*set)(struct value*, void*);
	void (*instance)(struct value*);

	void *data;
};

#endif /* ifndef VALUE_H */
```

我们可以看到，通过对 value 调用 `value_x_instance` 函数可以拿到属于新的类型的对象指针。

这个新的类型主要包含了几个函数指针，主要用途就是通过注入的不同指针，对其进行 value 操作。

+ value_a.h
```
#ifndef VALUE_A_H
#define VALUE_A_H 1

#include "value.h"

void value_a_display(struct value*);
uint64_t value_a_hash(struct value*);
void value_a_set(struct value*, void*);
void value_a_instance(struct value*);

#endif /* ifndef VALUE_A_H */
```

+ value_a.c
```
#include "value_a.h"

void value_a_display(struct value* v)
{
	puts((char*)v->data);
}

uint64_t value_a_hash(struct value* v)
{
	return 2;
}

void value_a_set(struct value* v, void* data)
{
	assert((char*)data);
	v->data = data;
}

void value_a_instance(struct value* v)
{
	v->data = (void*)malloc(sizeof(char));
	v->display = value_a_display;
	v->hash = value_a_hash;
	v->set = value_a_set;
}
```

这两个文件就是对此函数的诠释，只不过这边比较简单，所以很多的细节都是简化的。

这样一来，如果我们需要进行存储数据结构的编写，就觉得很舒服了。比如 list 的定义就可以如下：

```
struct list {
    list *pre;
    list *next;

    struct value *node;
};
```

然后通过 insert 的参数，对其 value 进行注入。不过有个不好的地方，这边在调用内部方法的时候，需要指定 self 参数。这个实属无奈之举。本来还想通过栈帧找到父结构体，但这个代码就太依赖于系统，编译器。所以只能这样。

不过，这就刚刚好了。其实还有一种方法，通通 void* 然后再加一个类型模版，不过这就是要理一下 C++ 的模版思路了。

不得不说，返璞归真，还是喜欢上 pure C 的代码。相较于高层的太多限制，C 上可以通过指针玩的很舒服。最近在进行 linux 内核的程序编写，深深地感觉到，手写 makefile 的好处。可以和 shell 完美的兼容。同时可以对依赖进行文件级别的控制。

唯一不好的一点就是 test 不是特别好写，只能自己进行 test.c + assert 的方式。之后再看看 C 的单元测试工具。开始从空格党变成 tab 党了。空格用来对其，tab 用来缩进的策略确实可以。而且可以很方便的进行 2，4，8，12 的缩进调整。

是在不知道该起什么名，就这样吧。
