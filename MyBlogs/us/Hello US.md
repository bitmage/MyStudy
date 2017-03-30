Hello US
---

I have written blogs for almost five years. Mostly I just record my daily work in Chinese due to the fact that I never think about I can have the chance to work in another country.

Now, thanks to the God, I have the fund support to help me study aboard, and how lucky I am to pass the Chinese GRE test to be a member of USTC(one of the top university in China). As I promise before, I will mainly work on two projects:

1. A search engine for [bilibili.com](http://bilibili.com) and its surround projects.
2. GC feature in Redis, maybe I will write another K-V store.

And this blog will totally record the process of these two projects. Why I use English instead of Chinese. Well, it's simple that I want to work in the US, and having a blog is a big adventage. So, if I want the interviewer to know more about me, I will send him my blog address. What if the blog is totally in Chinese? He will misunderstand or get no information. That's the reason why I am in English.

Do you think the search engine worths a blog to record it? I think the search engine is not simple. For example you should be able to collect the information first while always the website blocks the frequent requests from the same IP address. So you need a proxy. If you need a proxy, you should pay for it or write a web-spider to find the free proxies. Once you get enough proxies, you will write a distributed system to collect information and store them in a distributed storage system.

It's over? Of course not! You have the data, then you have to clean them before build an index in them. Because, not every item has the correct name. For instance, "【独家高清】小林家的龙女仆" and "小林家的龙女仆【BD】" have different name, but if you want a rank list, you should count them together. So you have to be able to do some NLP process.

So, the first project will be of much fun.

The second project may be more related to Algorithm. As a familiar Java user, I am willing to use the GC algorithem of JVM in Redis. As we know redis manages the memory itself instead of the system. So, it is easy to create a lot of memory fragmentation. You can easily find the performance test report in Internet. So, I want to improve the situation.

Hope I can have fun in these projects in the incoming three years.
