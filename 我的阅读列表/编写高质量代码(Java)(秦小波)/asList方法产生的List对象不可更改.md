asList方法产生的List对象不可更改
---
1. 在一个数组执行asList()方法之后，返回的List对象是并不是常用的java.util.ArrayList，而是一个Arrays类中的一个内部类，他只实现了几个简单的接口
>+ size()函数
>+ toArray()函数
>+ get()函数
>+ set()函数
>+ contains()函数
2. 如果希望进行改变，则需要使用new 函数，进行新建