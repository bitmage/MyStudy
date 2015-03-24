###net-filter第一把
===

一方面自己开始写OS,一方面也开始做一些Linux kernel相关的研究，顺便写一下kernel的module，因为看到一篇[论文是基于net-filter做一个P2P的流量监测器](http://www.cnki.net/KCMS/detail/detail.aspx?QueryID=8&CurRec=2&recid=&filename=HZLG201411022&dbname=CJFDLAST2014&dbcode=CJFQ&pr=&urlid=&yx=&uid=WEEvREcwSlJHSldRa1Fhb2FrK1EwbDhOSFNOZHpJRit4aE0rQlNtRDA2ampnWFN3TFNjQkJBZ2syNzllOGhSM213PT0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!&v=MDE4MzJUM3FUcldNMUZyQ1VSTCtmWk9SckZDdm5WN3JJTFRmSGFiRzRIOVhOcm85SFpvUjhlWDFMdXhZUzdEaDE=)。

自己也对这个有点兴趣，于是乎就开始准备按图索骥了。

不过自己不做这个P2P测量，而是准备做一个网络监管的小module,一方面是来练手，一方面是熟悉linux kernel module的开发流程。

首先就是设计，因为是基于Net-Filter框架所以main函数一定一个钩子。

目前的一个设计的文件结构是这样：

```
├── COPYRIGHT
├── Makefile
├── README.md
├── conf
│   └── websites.json
├── configure
├── src
│   ├── Makefile
│   ├── conf
│   │   ├── conf.c
│   │   ├── conf.h
│   │   ├── str.c
│   │   └── str.h
│   ├── install.sh
│   ├── net-filter
│   │   ├── filter.c
│   │   ├── filter.h
│   │   ├── package.c
│   │   ├── package.h
│   │   ├── parser.c
│   │   └── parser.h
│   ├── net-wall.c
│   ├── net-wall.h
│   └── tags
└── tests
    ├── Makefile
        ├── cases
            │   └── websites.json
                └── json-parser-test.c
```

+ conf 文件夹下面主要是配置文件相关的代码，因为用到了gdsl的数据结构库，所以会有针对特有数据结构的代码，如str.c&&str.h
+ net-filter 文件夹下面则是一些数据流程相关的，当注册的钩子函数被调用的时候，会调用 filter.c 中的过滤函数，然后将数据包中转到 package.c 中进行处理，这边则会调用 parser.c 进行解析，返回的结果提供给 filter.c 进行处理，如丢弃，转发，在处理等等。
+ 至于 install.sh 的作用就是一个环境的初始化，和环境的确认。

现在的一个坑就是，我对C的熟悉程度和我对经济的熟悉程度是一样的。然后就各种坑，特别是解析json和使用gdsl的时候，出现了各种错误，不过都可以慢慢的克服。

开始写C之后，最大的感触就是，圈子明显比之前的php||java小了很多,也许是因为后者比较简单，后者真的会简单一点。不过现在更加喜欢直接点的C。使用GDB调试还在慢慢适应。不得不说，一开始就上手java,对于自己的一个发展确实不是很理想。很多细节的部分都没有进行了解。

相对于Java, C代码要考虑的东西多了很多。简单的说，我是基于3.10内核进行编译的，那么对于常用的2.6内核，需要做一个兼容性的测试。然后，Makefile又是一个坑，很多的东西都要自己手动控制，不过这样确实满足了一下自己的控制欲望。先说到这，项目未动，计划先行。

**注意一点：**
> 网上很多的示例代码是有问题的，正确的钩子函数应该是这样的:

```
static unsigned int net_module (
        unsigned int hooknum,
        struct sk_buff * skb,
        const struct net_device *in,
        const struct net_device *out,
        int (*okfn) (struct sk_buff *)) {
    return 0;
}
```

> 很多时候，在第三行会有人写成 

`struct sk_buff **skb`

> 这边注意下即可
 