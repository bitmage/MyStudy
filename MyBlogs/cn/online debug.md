一次线上debug的过程
---

事情的缘由是这样的,很久之前,我写了一个爬虫,然后爬虫幸福的运行在服务器上,突然有一天,我收到一份邮件,上面写着爬虫失效,然后
肯定先是ssh上去看看进程.

先top一下看状况,一切良好,java进程的运行比较平稳,所以排除了死循环的错误,或者是NPE退出的错误.

然后线上使用**jstack**查了下虚拟机栈,然后就发现了如下一段奇葩的栈:

```
"pool-6-thread-629" prio=10 tid=0x00007fcfb4004000 nid=0x51e0 runnable [0x00007fcf6c6c4000]
   java.lang.Thread.State: RUNNABLE
	at java.net.SocketInputStream.socketRead0(Native Method)
	at java.net.SocketInputStream.read(SocketInputStream.java:129)
    ...
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
	at java.lang.Thread.run(Thread.java:662)

"pool-6-thread-628" prio=10 tid=0x00007fcfc4004000 nid=0x51df runnable [0x00007fcf6f2f0000]
   java.lang.Thread.State: RUNNABLE
	at java.net.SocketInputStream.socketRead0(Native Method)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
    ...
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
	at java.lang.Thread.run(Thread.java:662)

"pool-6-thread-627" prio=10 tid=0x00007fcff8003000 nid=0x51dd runnable [0x00007fcf6fffd000]
   java.lang.Thread.State: RUNNABLE
	at java.net.SocketInputStream.socketRead0(Native Method)
	at java.net.SocketInputStream.read(SocketInputStream.java:129)
    ...
```

因为我开的是40的fixedThreadPool,所以出现629的线程数,特别奇怪.所以初步判定是线程池中没有了线程,导致爬虫无法工作,而且这几个阻塞的线程
也可以认为是阻塞在了socket的读写上.因为我是自己设计过的线程池,我会对这种超时的任务进行删除,所以又往下看了下我的监控线程池栈.栈如下:

```
"pool-7-thread-6" prio=10 tid=0x00007fd030089800 nid=0x547c waiting on condition [0x00007fd0845b8000]
   java.lang.Thread.State: WAITING (parking)
	at sun.misc.Unsafe.park(Native Method)
	- parking to wait for  <0x00000000a0324a60> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:1987)
	at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:399)
	at java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:947)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:907)
	at java.lang.Thread.run(Thread.java:662)

"pool-7-thread-5" prio=10 tid=0x00007fd030087800 nid=0x547a waiting on condition [0x00007fd0847ba000]
   java.lang.Thread.State: WAITING (parking)
	at sun.misc.Unsafe.park(Native Method)
	- parking to wait for  <0x00000000a0324a60> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:1987)
	at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:399)
	at java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:947)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:907)
	at java.lang.Thread.run(Thread.java:662)

"pool-7-thread-4" prio=10 tid=0x00007fd030086000 nid=0x5478 waiting on condition [0x00007fd0849bc000]
   java.lang.Thread.State: WAITING (parking)
	at sun.misc.Unsafe.park(Native Method)
	- parking to wait for  <0x00000000a0324a60> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:1987)
	at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:399)
	at java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:947)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:907)
	at java.lang.Thread.run(Thread.java:662)
```

这边表现很正常,这边对于出现的waiting on condition的,则是我的任务队列的锁.问题来了,为什么会锁在任务队列上?我特地用jmap,dump了线上运行程序的
内存.然后用jvisualVM进行查询,这绝对是个不爽的过程,因为dump下的内存快照有800MB.

因为锁死在任务队列上,所以我们来看内存中,这个队列到底怎样.

> ![队列](images/2014-09-10-1.png)

可以发现,队列中确实是有数据,然后根据任务进行查询,发现果然是淘宝的任务.

> ![任务](images/2014-09-10-2.png)

因为之前测试的时候发现淘宝的任务可能存在超时,然后会进行重做任务,所以,立即去查我的代码.终于发现了问题.问题代码如下:

```
@Override
public void run() {
    if(times++ > 3){
    // 超过三次不做
        logger.info("任务失败次数过多!" + ((DPXTask)task).toString());
        return;
    }
    FutureTask<String> futureTask = new FutureTask<String>(task);
    try {
        workers.submit(futureTask).get(waitTime, TimeUnit.SECONDS);
    } catch (ExecutionException e) {
        logger.info("任务出错:" + ((DPXTask) task).toString() + e.getMessage());
        // taskqueue.add((Runnable) task); -- 这是错误代码
        run(); // 这才对
    } catch (TimeoutException e) {
        logger.info("任务超时:" + ((DPXTask) task).toString() + e.getMessage());
        run();
    } catch (Exception e) {
        logger.info("任务错误:" + ((DPXTask) task).toString() + e.getMessage());
        run();
    }
}
```

可以看到,错误的代码是因为直接朝taskqueue写入了任务,从而使得监控任务失效,脱离了监控任务的管理范围,导致了线程的泄漏.从而导致线
程池无法产生新的线程,于是,把代码进行修改,然后上线,到目前为止,运行平稳.

不过也暴露了问题,就是日志的作用没有体现,一开始在对日志的处理中,基本没有发现对debug有益的信息,因为第一次打日志.所以,对日志的处理,之后
会完善.

