一个内存泄漏问题
---

事情是这样的。因为之前写的一个 C 语言程序。因为在本机（MacOS）上直接跑 make test 可以通过。但是放到 CI 上，报了个 build fail 的错误。直接拉取日志的话。是这样的：

```
malloc.c:2374: sysmalloc: Assertion `(old_top == (((mbinptr) (((char *) &((av)->bins[((1) - 1) * 2])) - __builtin_offsetof (struct malloc_chunk, fd)))) && old_size == 0) || ((unsigned long) (old_size) >= (unsigned long)((((__builtin_offsetof (struct malloc_chunk, fd_nextsize))+((2 *(sizeof(size_t))) - 1)) & ~((2 *(sizeof(size_t))) - 1))) && ((old_top)->size & 0x1) && ((unsigned long) old_end & pagemask) == 0)' failed.
make[1]: *** [test] Aborted (core dumped)
make[1]: Leaving directory `/home/travis/build/MikeCoder/json-parser/test'
make: *** [test] Error 2
```

其实当时也是很诧异的，因为在本机上的 make test 跑下来也是没有问题的。然后准备试一下用 valgrind 做一下内存检查，结果一查，就是发现自己以为写的不错的代码，满满都是漏洞。其中有一个比较智障的是这样的一段代码:
```
unsigned long long len = strlen("(str:")
                             + strlen((char *)v.v)
                             + strlen(")")
                             + strlen("\0");
char *str = (char *)malloc(len * sizeof(char));
```

一开始，我以为是没问题的，结果查出来一个 invalid write，然后意识到 strlen('\0') 的结果是 0 颇有无奈。

所以，最后修改为:

```
unsigned long long len = strlen("(str:")
                            + strlen((char *)v.v)
                            + strlen(")")
                            + 1; /* '\0' */
char *str = (char *)malloc(len * sizeof(char));
```
这里面有个坑，因为 LLVM 也就是苹果上会对异常的内存书写做了保护，所以直接在 MacOS 上运行程序是没有出现问题的。但是在 Linux（CI 的默认测试环境） 上，就直接报错了。

然后其实这个问题的原因也很简单。因为在超出的内存空间里写了值，于是在新的 malloc 空间时，会发现这部分的堆内存已经被写入了内容，导致内存分配失败。

最后看到这个结果时，长舒一口气。 总算没有白费这么长时间进行内存泄漏的检测。相比于之前写 Java 和 PHP 时对内存管理的不屑一顾。C 里面确实对每一个 byte 都要慢慢的扣。不过也体会到另一种编程的乐趣。

其实，相对于直接在栈上分配内存。将所有库的内存放在堆中，确实能统一接口，统一内存的分配。所以在 mlib 里面，我把很多的基础数据类型，比如 double，我都作为一个 malloc 在堆上的区域进行 free 操作。

```
mike@Slug ~/json-parser> valgrind ./test/parser_test.test
...
=3210==
==3210== HEAP SUMMARY:
==3210==     in use at exit: 0 bytes in 0 blocks
==3210==   total heap usage: 4219 allocs, 4219 frees, 714,419 bytes allocated
==3210==
==3210== All heap blocks were freed -- no leaks are possible
==3210==
==3210== For counts of detected and suppressed errors, rerun with: -v
==3210== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)
```


总的来说，只是为了好玩吧。与其做一个 lib-caller，不如做一个 lib-writer。
