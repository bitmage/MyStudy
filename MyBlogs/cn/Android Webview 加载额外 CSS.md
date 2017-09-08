Android Webview 加载额外 CSS
---

这个需求也是挺好玩的。主要是因为女朋友用的一个 APP，是城市里面的一个实时公交的 APP。但是作为一个会点代码的人，一看到这么一个 APP，第一反应是，为什么这种粗制滥造的 APP 可以存活于世，而且还是政府单位发布的。
本着，吐槽一个东西，就要拿出一个比他更好的解决方案的思路，所以我就花了将近一个下午的时间。重新做了一个 APP 送给她。

其实，APP 的难度很低，主要是实现思路比较好玩。熟悉 Firefox 的同学应该知道 stylish 这个插件，他可以进行一些 CSS 的重写工作，同时覆盖到页面上。这样的效果就是可以完成去广告和简化页面的效果。

所以这边，我也准备使用这个思路。当然，我先看看网上有没有对应的资源。避免重复劳动。

然后就搜到了这么一个问题 [关于Android中WebView在加载网页的时候，怎样应用本地的CSS效果？就是说怎样把本地的CSS嵌入到HTML中](https://www.zhihu.com/question/20856303)，底下的一些回答让我觉得，可能这就是知乎的平均水平吧。太过高层的编程语言，过于简单的答案获取，让我们失去了独立解决问题的能力。

主要使用了 [Justson/AgentWeb](https://github.com/Justson/AgentWeb) 来简化代码的配置工作。

具体的实现思路很简单，就是在每次页面加载完成之后，主动的再去读取一个 CSS 文件，这样能保证最后的 CSS 能够覆盖之前的所有配置。所以这边就涉及到一点，Java 调用 JS 和 JS 反馈给 Java 的问题。其实这个使用原生的 WebView 也可以实现，只不过，有了 AgentWeb 的更方便的封装，我觉得直接使用 AgentWebview 也挺好。

代码主要是这样的：

```
public class MainActivity extends AppCompatActivity {

    private AgentWeb agentWeb;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        RelativeLayout layout = (RelativeLayout) findViewById(R.id.layout);

        agentWeb = AgentWeb.with(this)
                           .setAgentWebParent(layout, new RelativeLayout.LayoutParams(-1, -1))
                           .useDefaultIndicator()
                           .defaultProgressBarColor()
                           .setWebViewClient(mWebViewClient)
                           .createAgentWeb()
                           .go("http://wap.ksbus.com.cn/mapHome");
    }

    //WebViewClient
    private WebViewClient mWebViewClient = new WebViewClient() {
        @Override
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            super.onPageStarted(view, url, favicon);
        }


        @Override
        public void onPageFinished(WebView view, final String url) {
            super.onPageFinished(view, url);
            agentWeb.getJsEntraceAccess().callJs(loadCss(Config.CSS_URL));
        }
    };

    public static String loadCss(String url) {
        return "javascript:var d=document;" +
               "var s=d.createElement('link');" +
               "s.setAttribute('rel', 'stylesheet');" +
               "s.setAttribute('href', '" + url + "');" +
               "d.head.appendChild(s);";
    }
};
```

直接重新定义 WebViewClient 对象，然后通过在页面加载完成的时候加载外部的 CSS 流程来实现。当然，这只是其中的一个思路。我们也可以直接在 JS 中进行加载。同时这样的好处还有很多，可以直接集成其他具有页面 H5 页面进入 APP。

所有的 demo 代码在 [这](https://github.com/YandM-site/KSBus)

真的挺简单的，但是，这个思路确实是好玩。业务逻辑不用自己写，只需要一个定制的 CSS，就可以实现 APP 的编写。同时，似乎也可以把页面的主题做成本地化。好处还有很多。方法也还有很多。
