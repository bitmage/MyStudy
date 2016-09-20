Java 自定义 URL 规则解析
---

正如上文说的，最近再写一个 Proxy 的爬取工具。那么有个问题就接着来了。如何快速的定义一个方便的 URL 配制方法。

举个简单的例子。我们可以看到:

```
public final static String VPS_LIST_URL[] = {
		"http://www.cz88.utils/proxy/[|http_[2-3|7-9].shtml]",
		"http://www.site-digger.com/html/articles/20110516/proxieslist.html",
		"http://www.kuaidaili.com/proxylist/[0-10]"
};
```

这边在 cz88 这个站点，他的路径是比较奇怪的。页码为1的时候，他是直接根目录访问，但是从之后就是 2-3 和 7-9 两个区间。所以，这边我用的是正则表达式的一个写法。相对来说比较容易上手。

这边就是一个比较好玩的东西了。其实，说白了，和写脚本解析器一样。无非常用的就是 DFA 和 NFA 的算法。

首先就是一个字符串的拆分。把普通字符串和自定义规则区分开来。最方便的方法就是使用这则表达式。但是，这边有这么个情况，就是存在嵌套关系。比如 cz88 那个 **[|http_[2\-3|7\-9]]** 这个场景下，无法很好的实现最长的两个括号内的内容。

当然，正则中也有这个语法，不过按照[文档](http://www.jb51.net/tools/zhengze.html#balancedgroup)看，是 .net 维护的分支中提供的，所以这边我放弃了使用正则。希望有解决方法的在评论里提下。

然后对 URL 规则的定义如下:

1. \[\] 符号表示存在分支情况或者是范围
2. | 表示分支，or 条件需要使用\[\]
3. \- 表示范围，1-22 表示 1 到 22 。需要使用\[\]
4. 支持嵌套，比如[1-2|[3-4]a].htm，表示 {1.htm, 2.htm, 3a.htm, 4a.htm} 这个集合
5. ~~空格表示无数据。比如 m.baidu.com 和 baidu.com, 可以用这个表达式表示: *[m.| ]baidu.com*, 因为 URL 中不能出现空格，所以就用空格表示无。这也确实是无奈之举，因为对与 Java 的 split 函数，如果是无就不会分割。（其实是懒得再写自定义切分了）~~
6. 无数据直接留空就行比如: [|www.]bing.com 表示 bing.com 和 www.bing.com，因为直接用 split 方法在嵌套定义规则时有 bug，只好自己写了切分函数- -。

为了比较好的来写这个东西，我自己举了个例子: **[http|https]://[m.|]mike/[1-2|[3-5]ff].html**

###接下来就是如何实现了

这个的主要思想，可以在这篇博客里看到: [Regular Expression Matching的NFA解法](http://mikecoder.cn/?post=122)

在这里，就是对应的这样的一个图:

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

那么对应的代码数据结构如下:

```
// Block 即表示每个节点的抽象:
package predator.vps.crawler.processor;

import java.util.ArrayList;

/**
 * @author Mike
 * @project predator-vps-crawler
 * @date 9/19/16, 10:08 AM
 * @e-mail mike@mikecoder.cn
 */
public class Block {
    private String           content;
    private Type             type;
    private int              start;
    private int              end;
    private ArrayList<Block> nexts;

    public Block(Type type) {
        this("", type, 0, 0, new ArrayList<Block>());
    }

    public Block(String content) {
        this(content, Type.STRING, 0, 0, new ArrayList<Block>());
    }

    public Block(int start, int end) {
        this("", Type.LOOP, start, end, new ArrayList<Block>());
    }

    public Block(String content, Type type, int start, int end, ArrayList<Block> nexts) {
        this.content = content.trim(); // just in case if there is a space
        this.type = type;
        this.start = start;
        this.end = end;
        this.nexts = nexts;
    }
    // ... set & get methods ...
    // ... toString & hashCode & equals methods ...
}

// Type 枚举类
package predator.vps.crawler.processor;

/**
 * @author Mike
 * @project predator-vps-crawler
 * @date 9/19/16, 10:09 AM
 * @e-mail mike@mikecoder.cn
 */
public enum Type {
    STRING, LOOP, BRANCH_START, BRANCH_END, START, END
}
```

这样就对每个节点定义就已经完善了。那么接下来就是解析。之前也提到了，因为正则无法获得最长对应括号的内容，所以这边只能用手动的方式进行切分。其实也就是比较[]的个数，取最长的那段。

```
private ArrayList<String> _split(String snippet) {
	ArrayList<String> res = new ArrayList<String>();
	int count = 0;
	int start = 0, idx = start;
	while (idx < snippet.length()) {
		if (snippet.charAt(idx) == '[') {
			idx++;
			count++;
			while (count != 0) {
				if (idx < snippet.length() && snippet.charAt(idx) == '[') {
					count++;
				}
				if (idx < snippet.length() && snippet.charAt(idx) == ']') {
					count--;
				}
				idx++;
			}
			res.add(snippet.substring(start, idx));
			start = idx;
		} else {
			while (idx < snippet.length() && snippet.charAt(idx) != '[') {
				idx++;
			}
			res.add(snippet.substring(start, idx));
			start = idx;
		}
	}
	return res;
}
```

然后将切分好的字符串交给解析函数:
```
private Block _parse(String snippet, Block start, Block end) {
	Block current = start;
	ArrayList<String> snippets = _split(snippet);
	for (String snip : snippets) {
		current = _create(snip, current, null);
	}
	current.getNexts().add(end);
	return start;
}
```

这边，我留了 start，end 两个节点，其实也就是链表中常用的头结点和尾节点，方便之后的递归处理。 可以想象如下的一个递归过程:
```
S  --------------------  E
   BS  -----------  BE
       BS  --  BE
```

具体的代码如下:
```
private Block _create(String snippet, Block current, Block last) {
	Block next = null;
	if (snippet.charAt(0) == '[') {
		Block branchStart = new Block(Type.BRANCH_START);
		Block branchEnd = new Block(Type.BRANCH_END);
		current.getNexts().add(branchStart);

		String content = snippet.substring(1, snippet.length() - 1);
		// String[] branches = content.split("\\|");
		// use custom split function instead
		ArrayList<String> branches = _branches(content);
		for (String branch : branches) {
			if (!_check(branch)) { // check does it has inner []
				branchStart = _parse(branch, branchStart, branchEnd);
			} else { // this is only branches
				if (branch.contains("-") && !branch.contains("\\-")) {
					String[] loops = branch.split("-");
					int start = 0, end = 0;
					try {
						start = Integer.parseInt(loops[0]);
					} catch (Exception e) {
						if (loops[0].length() == 1) {
							// use negative number to represent the char
							start = -(int) ((char) loops[0].charAt(0));
						} else {
							e.printStackTrace();
						}
					}
					try {
						end = Integer.parseInt(loops[1]);
					} catch (Exception e) {
						if (loops[1].length() == 1) {
							// use negative number to represent the char
							end = -(int) ((char) loops[1].charAt(0));
						} else {
							e.printStackTrace();
						}
					}
					Block loop = new Block(start, end);
					branchStart.getNexts().add(loop);
					loop.getNexts().add(branchEnd);
				} else {
					Block string = new Block(branch);
					string.getNexts().add(branchEnd);
					branchStart.getNexts().add(string);
				}
				next = branchEnd;
			}
		}
	} else {
		Block content = new Block(snippet);
		current.getNexts().add(content);
		next = content;
	}
	if (last != null) {
		assert next != null;
		next.getNexts().add(last);
	}
	return next;
}
```


*可以看到我注释了之前的 split 方法，原因就是在处理 \[|\[ff|ff\]\] 这种嵌套的定义的时候，会把内部的内容切分，也是自己大意了。*

切分函数如下:
```
private ArrayList<String> _branches(String snippet) {
	int count = 0;
	int start = 0;
	int idx = start;
	ArrayList<String> res = new ArrayList<String>();
	while (idx < snippet.length()) {
		if (snippet.charAt(idx) == '[') {
			count++;
		} else if (snippet.charAt(idx) == ']') {
			count--;
		} else if (snippet.charAt(idx) == '|' && count == 0
					&& (idx == 0 || snippet.charAt(idx - 1) != '\\'))
		{
			res.add(snippet.substring(start, idx));
			start = idx + 1;
		}
		idx++;
	}
	res.add(snippet.substring(start, idx));
	return res;
}
```

当发现存在递归的节点时，将其重新进行切分。

其实，还是挺简单的一个规则引擎。毕竟之后就要写解释器。正好凑两篇文章。具体的代码可以在:[https://github.com/MPredator/predator-vps-crawler/tree/master/src/main/java/predator/vps/crawler/processor](https://github.com/MPredator/predator-vps-crawler/tree/master/src/main/java/predator/vps/crawler/processor) 找到。

不过这个东西，确实比业务代码好玩啊。
