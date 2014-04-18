使用ActiveMQ完成Request和Reply模式
---

这几天一直在学习JMS标准，也在看<<ACTIVEMQ IN ACTION>>这本书，当中有几个比较好的例子我这边来分享下。

首先是,ACTIVEMQ的本机环境搭建问题。关于这个，我建议大家阅读这篇文章:[Using ActiveMQ > Getting Started](http://activemq.apache.org/getting-started.html#GettingStarted-UnixBinaryInstallation)

一般介绍如何启动ActiveMQ,都是运行activemq脚本，但是我喜欢用的是activemq-admin这个脚本，原因是，我可以看到监控的
状态。这样就可以做一些简单的判断了，比如当前系统的运行状况，和负载情况。

怎么判断你的ActiveMQ已经可以正常运行了呢，你只需要打开[http://localhost:8161](http://localhost:8161),当然这是默认设置的效果，你也可以
进行端口的修改。如果你看到了ActiceMQ的界面，说明MQ已经启动完成。你可以开始编写代码了。

先申明一点，为了代码尽可能的简单，和便于理解，之后的代码只是启动了一个简单的Broker，并没有启动其他的部件。当然，如果
你没有启动ActiveMQ，运行以下的代码也是可以跑的。