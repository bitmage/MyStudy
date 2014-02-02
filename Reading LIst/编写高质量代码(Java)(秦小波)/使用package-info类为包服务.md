使用package-info类为包服务
---

###package-info.java的简介

1. 这个类主要是为本包进行服务
> 不能被随便创建，在一般的IDE中，创建package-info.java会产生“type name is notvaild”的错误，类名称无效。简单的办法就是使用记事本创建一个文件，然后再拷贝进去即可。

2. 这个类服务的对象很特殊
> 这个类用于描述这个包的信息比如说，类的用途，类的分类

3. package-info.java中不能实现代码
> 他在程序编译完成之后会生成package-info.class，但是在package-info.java中不能声明package-info类

###package-info.java的作用

1. 声明有好类和包内的访问常量。
> 1. 例如，在这个包中可能会用到一些常量，比如说对方的IP，端口，等等，但是在其他的类中却不需要，所以我们可以把这种信息放到这个文件中
 
2. 在生成java doc的时候，这个类是作为这个包的首页，在这个类里写上包中的注释，可以方便之后的阅读工作。