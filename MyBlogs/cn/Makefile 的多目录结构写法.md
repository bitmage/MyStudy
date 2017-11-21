Makefile 的多目录结构写法
---

因为最近迷上了 C 语言。所以开始进行的一些项目的编写都是采用的 C 语言。这么就会带来一个小的问题，就是 makefile 的写法问题。

比如一个目录结构是这样的：

```
.
├── LICENSE
├── ReadMe.md
├── TODO.md
├── makefile
├── src
│   ├── makefile
│   └── ...
└── test
    ├── makefile
    └── ...
```

如何协调好三个 makefile 的作用。这边我自作主张的给自己的 makefile 链做了一个如下的约定：

+ 每一个单独的 makefile 可自己执行
+ makefile 中的变量以上级传递的变量为准
+ 如果出现冲突，以上级为准
+ 最后的安装和集成工作由上级进行，比如 src 中的 makefile 只进行编译成 .o 的操作，但是最后编译成 so 或者静态连接文件则由根目录的 makefile 决定。

以此为基础，所以便有了如下的 makefile 写法。

项目更目录的 makefile
```
# /makefile
ifndef CC
CC = gcc
export CC
endif

ifndef CFLAGS
CFLAGS = -g -Wall -std=c89
export CFLAGS
endif

build:
	cd src && make

.PHONY: test
test:
	cd test && make test

.PHONY: clean
clean:
	cd src && make clean
	cd test && make clean
```

src 目录下的 makefile
```
# /src/makefile
ifndef CC
CC = gcc
endif

ifndef CFLAGS
CFLAGS = -g -Wall -std=c89
endif

main: main.c
	$(CC) $(CFLAGS) -o main main.c

.PHONY: clean
clean:
	rm main
```

test 目录下的 makefile
```
# /test/makefile

ifndef CC
CC = gcc
endif

ifndef CFLAGS
CFLAGS = -g -Wall -std=c89
endif

test: test_main
	./test_main

test_main: test_main.c
	$(CC) $(CFLAGS) -o $@ test_main.c

.PHONY: clean
clean:
	rm test_main
```

不过也有比较麻烦的地方，就是如果有多个 lib 路径，比如说 lib 文件夹，里面有 src 需要的类库。需要链接。 那就可以通过 VPATH 方式进行实现。

```
.
├── lib
│   ├── lib.c
│   ├── lib.h
│   └── makefile
├── makefile
├── src
│   ├── main.c
│   └── makefile
└── test
    ├── makefile
    └── test_main.c
```

比如多了一个 lib 目录，此时我们需要在 src 中引用该目录，则在 src 的 makefile 中这么写：

```
# /src/makefile
ifndef CC
CC = gcc
endif

ifndef CFLAGS
CFLAGS = -g -Wall -std=c89
endif

# This is the key
VPATH = ../lib/

main: main.c lib.o
	$(CC) $(CFLAGS) -o main main.c lib.o

.PHONY: clean
clean:
	rm main
```

然后直接 make 即可。lib 中的 makefile 如下：

```
# /lib/makefile
ifndef CC
CC = gcc
endif

ifndef CFLAGS
CFLAGS = -g -std=c89
endif

lib.o:lib.c
	$(CC) $(CFLAGS) -c lib.c

.PHONY: clean
clean:
	rm lib.o
```

这个也算是，最近写 C 的一个总结性的文档了。 使用习惯了 IDE，对这种手工的模块划分的编辑脚本越发的不熟悉，对 Java，所谓的 Maven，Ant 最后都变成了 GUI 的界面。

但是手工直接编写编辑脚本的好处也是很大的，至少，每个文件的依耐关系将会对后期的优化做很多好处。不会因为一个细微的修改对整个项目进行重新编译。

相对于网上的其他的 how to 文章，这个更多的是一个总结或者说是 Mike's Style 式的 makefile 编写方式。典型的个性特点吧。

