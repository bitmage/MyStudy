使用 C 进行手动的内存管理
---

在之前苦读[『垃圾回收的算法与实现』](https://book.douban.com/subject/26821357/)，也想着什么时候能够自己手动实现一把。加上自己对 redis 也还是算熟悉，也是知道他的内存碎片问题的严重性。所以，就想着这两者结合看看能有什么好玩的地方。

首先就是，如何进行内存的管理。众所周知，C 的内存管理通常使用 malloc 和 free 两个操作进行，于是乎，如果我们需要进行申请堆区的内存空间，（以下的讨论通通以堆区申请内存空间为主，栈区分配的内存通通不考虑），往往就会直接的 `malloc(sizeof(xx))`，然后再在不需要的时候直接调用 free 进行。但是，操作系统在进行内存分配的时候，并不能保证多次 malloc 的物理空间地址连续，加上内存的换页，就会导致性能的低下，操作系统需要不停的进行换页操作。

而且，在 MacOS（10.13.1） 上，malloc 的策略是，如果有可用的连续空间，直接分配，如果没有逻辑连续的可用空间，则会不停的继续申请。如果超过了系统限制，即使空白部分的总和大于你需要的大小，但是依旧会分配失败。其他的内存分配函数还有 realloc 和 calloc，不过也都是换汤不换药。总的还是选用第一个可用的地址。

接下来就是看，多次的内存申请和使用伪内存管理之后的效率差距：

```
#include <ctype.h>
#include <errno.h>
#include <float.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <wchar.h>
#include <wctype.h>

#define TIMES 100
#define SIZE 10

void print(void *mem, int size)
{
    int i;
    unsigned char *p = mem;
    for (i = 0; i < size; i++) {
        printf("%d ", *(p + i));
    }
    printf("\n");
}

void *m_brw(void *mem, unsigned long long len)
{
    return mem + len;
}

void m_rtn(void *ptr, unsigned long long len)
{
    memset(ptr, 0, len);
}

int main()
{
    clock_t start,finish;
    double totaltime;
    start=clock();

    int i;
    for (i = 0; i < TIMES; i++) {
        int *a = (int *)malloc(sizeof(int));
        printf("%x\n", a);
        *a = i;
        free(a);
    }

    finish=clock();
    totaltime=(double)(finish-start)/CLOCKS_PER_SEC;
    printf("%lf\n", totaltime);

    void *block = malloc(SIZE);
    memset(block, 0, SIZE);

    start=clock();
    for (int i = 0; i < TIMES; i++) {
        int *a = (int *)m_brw(block, sizeof(int));
        *a = i;
        /* print(block, SIZE); */
        m_rtn(a, sizeof(int));
        /* print(block, SIZE); */
    }
    finish=clock();
    totaltime=(double)(finish-start)/CLOCKS_PER_SEC;
    printf("%lf\n", totaltime);
    return 0;
}
```

以上便是测试代码，使用 `m_brw` 和 `m_rtn` 作为接口，也是为之后进行编写定下了两个常用接口，注释的两个 print 可以用来打印内存值。当有了需要擦除的首地址和长度之后，便可以开始内部的清理工作了。当然，这个的效率差是在 10 倍左右的。于是乎，本文一开始的思路似乎有了可用之地。所以，之后就是基于该方式，尝试写一个，带 GC 的内存管理 module。

