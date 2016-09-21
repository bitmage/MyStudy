Java URL 规则解释器
---

接上文[《Java 自定义 URL 规则解析》](http://mikecoder.cn/?post=163)，这次，我们来写这个结构的解释器。

上文的描述中，我们得到了这样的一个数据结构:

```
S: start
E: end
loop: loop
BS: branch start
BE: branch end

        -- http ---                 -- m. --                    -- loop: 1-2 --------------------
S -- BS             BE -- :// -- BS          BE -- mike/ -- BS                                   BE -- .html -- E
        -- https --                 -- '' --                    -- BS -- loop: 3-5 -- BE -- ff --
```

现在，就是需要对其意义进行解释。思路也是非常简单。因为对应的状态比较少。只有五个状态。所以其实也就是一个五个状态的有限状态机。

那就首先建立一个 switch case 对应不同的状态:

```
private void _interpret(Block current, StringBuilder strBuilder) {
    switch (current.getType()) {
        case START:
        case BRANCH_START:
        case BRANCH_END:
        case LOOP:
        case STRING:
        case END:
    }
}
```

用来对应这些关系。不难发现，对于前三个状态(START, BS, BE)而言，他们的代码意义其实是没有的，主要就是用来起个标示作用，所以，这边直接进行向后的递归。

```
case START:
case BRANCH_START:
case BRANCH_END: {
    for (Block next : current.getNexts()) {
        _interpret(next, strBuilder);
    }
    break;
}
```

对于循环而言，那就要做一个特殊处理了。按照上文中，我们对 char 字符做了特殊处理，即将其转化为负数。所以这边是:
```
case LOOP: {
    if (current.getStart() < 0) {
        for (int i = -current.getStart(); i <= -current.getEnd(); i++) {
            strBuilder.append((char) i);
            for (Block next : current.getNexts()) {
                _interpret(next, strBuilder);
            }
            strBuilder.delete(strBuilder.length() - String.valueOf((char) i).length(), strBuilder.length());
        }
    } else {
        for (int i = current.getStart(); i <= current.getEnd(); i++) {
            strBuilder.append(i);
            for (Block next : current.getNexts()) {
                _interpret(next, strBuilder);
            }
            strBuilder.delete(strBuilder.length() - String.valueOf(i).length(), strBuilder.length());
        }
    }
    break;
}
```

有个小细节，就是在递归后删除添加字符的时候，因为对于数字而言，他的长度不一定是 1 (100 长度为 3)，所以不能直接 - 1 了事。还有第一部分，需要进行 (char) 之后，再进行删减，不过这边都是 1。

最后，对于 String 就很简单了:
```
case STRING: {
    strBuilder.append(current.getContent());
    for (Block next : current.getNexts()) {
        _interpret(next, strBuilder);
    }
    strBuilder.delete(strBuilder.length() - current.getContent().length(), strBuilder.length());
    break;
}
```

还有 END，那就是直接把结果放进 res 就好了。
```
case END: {
    res.add(strBuilder.toString());
    break;
}
```

其实仔细看下，这个算法其实也就是个 DFS。 不过，最后的最后，我的需求终于做完啦。对于之前提到的 "[http|https]://[m.|]mike/[1-2|[3-5]ff].html" 这个规则，我们程序跑下来，结果是:

```
[
    http://m.mike/1.html,
    http://m.mike/2.html,
    http://m.mike/3ff.html,
    http://m.mike/4ff.html,
    http://m.mike/5ff.html,
    http://mike/1.html,
    http://mike/2.html,
    http://mike/3ff.html,
    http://mike/4ff.html,
    http://mike/5ff.html,
    https://m.mike/1.html,
    https://m.mike/2.html,
    https://m.mike/3ff.html,
    https://m.mike/4ff.html,
    https://m.mike/5ff.html,
    https://mike/1.html,
    https://mike/2.html,
    https://mike/3ff.html,
    https://mike/4ff.html,
    https://mike/5ff.html
]
```

Misson completed.

**【[代码在这](https://github.com/MPredator/predator-vps-crawler/blob/master/src/main/java/predator/vps/crawler/processor/Interpreter.java)】**
