SQL注入 主讲人 -- 止介

+ XSS跨网站脚本
+ CSRF跨网站请求伪造
+ SQL注入
+ 代码执行
+ 文件上传
+ 信息泄漏
+ 权限绕过
+ 弱口令
+ 系统配置
+ 社会工程

工具
backtrack/wavs/webscan/burpsuite/sqlmap/metasploit

数据
字典(后台,组建,备份,子站)
解密库,弱口令库,综合库

信息收集
crawl,webscan,google

SQL注入常规检测
基于布尔,基于错误,基于时间,联合查询,堆查询

实践
www.ccsa.org.cn/record/display.php?id= union all select 1,2,3,4,5,6,7

替换id为-1,连接跳转7.

跳转改为null,然后发现新页面

然后查infomation库,可以看到库名

爆绝对路径
WAF绕过 - 编码,注释,函数鱼贯尖子替换,大小写混杂,缓冲区溢出,引号'使用UTF8(%EF%BC%871),等号用like.

Google Dark, Crawl/Web scan
(?id=)


select COncat('x', IFNULL(id),'none'),'x) from table;
char(34,47,101,116,99,47,112,97,115,119,100,34);

XSS防范
对session进行httponly
限定简爱在站外资源CSP
过滤使用百名单
符文本事用UBB/Markdown
记录与特殊日志
前端不早做显示外部数据
