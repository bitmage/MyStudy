Hexo 标签云插件
===

按照常理，首先要说明为什么要写这个东西。最主要的原因是，我在看同学博客的时候，被大部分的标签云恶心到了。 要么就是一个静态的列表，要么就是一个不知道怎么停下来的标签球。为表愤怒，我就写了这个插件。

求 STAR [Hexo-Tag-Cloud](https://github.com/MikeCoder/hexo-tag-cloud)

####使用方法

+ 在 hexo 博客的根目录找到 package.json 这个文件夹，添加如下的依赖:
```
{
    "name": "hexo-site",
    "version": "0.0.0",
    "private": true,
    "hexo": {
        "version": "3.2.0"
    },
    "dependencies": {
        "hexo": "^3.2.0",
        "hexo-deployer-git": "^0.1.0",
        "hexo-generator-archive": "^0.1.4",
        "hexo-generator-category": "^0.1.3",
        "hexo-generator-index": "^0.2.0",
        "hexo-generator-tag": "^0.2.0",
        "hexo-renderer-ejs": "^0.2.0",
        "hexo-renderer-marked": "^0.2.10",
        "hexo-renderer-stylus": "^0.3.1",
        "hexo-server": "^0.2.0",
        "hexo-tag-cloud": "1.0.*" // 就是这句
    }
}
```
+ 执行 **npm install**
+ 然后可以试着执行 **hexo g** 重新生成静态文件，这时候可以看一下 *public* 目录下是否有 tagcloud.xml 和 tagcloud.swf 这两个文件。如果有，则表示插件运行正常。
+ 如果上一步发生问题，请在 github 上提交 issue 并且附上 error log。 提交地址:[GITHUB ISSUE](https://github.com/MikeCoder/hexo-tag-cloud/issues)
+ 然后运行 **hexo s**, 查看 http://localhost:4000/tagcloud.swf 是否可以看到标签云。如果不可以，请查看 tagcloud.xml 是否有内容。
+ 最后，就是将系统原有的 tagcloud 换成新版的 tagcloud.这边以官方自带的 landscape 主题为例。
+ 找到 *hexo/themes/landscape/layout/_widget/tagcloud.ejs* 这个文件，将里面的内容修改为:
```
<% if (site.tags.length){ %>
  <div class="widget-wrap">
    <h3 class="widget-title"><%= __('tagcloud') %></h3>
    <div class="widget tagcloud">
        <embed tplayername="SWF" splayername="SWF"
            type="application/x-shockwave-flash" src="tagcloud.swf"
            mediawrapchecked="true" pluginspage="http://www.macromedia.com/go/getflashplayer"
            id="tagcloudflash" name="tagcloudflash" bgcolor="#f3f3f3"
            quality="high" wmode="transparent" allowscriptaccess="always"
            flashvars="tcolor=0xbd1016&amp;tcolor2=0x808080&amp;hicolor=0x0065ff&amp;tspeed=100&amp;distr=true"
            height="100%" width="100%">
        </embed>
    </div>
  </div>
<% } %>
```
+ 最后再次执行 **hexo g && hexo s**, 查看首页是否已经替换成功。
+ 好好享受新版的 tagcloud 还有 hexo 吧。
+ **最重要的，请不要使用中文作为 tag，会存在编码问题**

####效果展示
1. 这边首先上一个图片效果图:
> ![TagCloud](http://chuantu.biz/t2/33/1458566883x1822613129.png)

2. 然后就是一个 Live Demo:
> 请点击这个链接:[mikecoder.github.io](http://mikecoder.github.io)

####原理
这边其实很简单，就是在 exit 事件结束前，遍历所有的 tag，然后记录在 tagcloud.xml 里面，通过将 tagcloud.swf 读取这个 xml，然后前端生成标签云。

####接下来吐槽的
1. 不推荐 Hexo 作为自己的博客系统，虽然这是免费的。不过，官方提供的插件挂载点，真的少。这边是官方文档中，插件的挂载点:
> + deployBefore
> + deployAfter
> + exit
> + generateBefore
> + generateAfter
> + new

2. 这边和专业的博客系统比起来，真的是少的太多了。能做的事情也确实很少。这边推荐一下 [emlog](http://emlog.net) , 虽然不如 wordpress 功能强大，但是作为一个个人博客而言，功能已经可以满足的很好。
3. Hexo 主要把自己作为一个静态页面生成器，所以在设计上走的是简化的路线。如果重新设计的话，其实可以将前端的页面进行充分模块化，方便用户进行自定义修改。
4. 还有就是 npm 的设计，也是挺好的，不过踩了一个坑，就是 npm 的包上传的时候，ReadMe 不识别 README.md，所以一开始上传的时候，提示没有找到 ReadMe 相关的文档。后来找到需要在 package.json 里面配置，也是挺蛋疼的。
5. last but not least, hexo 虽然支持 markdown 语法，但是，博客的本身并不是 markdown， 如果之后想要迁移，得花很大的精力将博客前的那段描述去除掉。这也是我不用 hexo 最主要的原因。
