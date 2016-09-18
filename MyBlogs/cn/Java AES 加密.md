一个爬虫引发的 Java AES 问题
---

写在开头，为什么有这一篇文章呢？因为，最近我开始了一个项目组，就是 HTTP Proxy 的信息采集。因为之前一直有个写爬虫的习惯，但是因为一直没有一个稳定的 Proxy 的提供渠道，或者说，并没有限制的资金购买这个服务。导致了我之前的刷某些服务器，被封了 IP （也是因为懒）。

所以，为了避免以上的悲剧不再发生，就开始了这个项目组。那么，这个项目和 AES 加密有什么关系呢。其实，我的计划里，并没有关系。但是，在写爬虫爬取各个网站上的 Proxy 的时候，遇到了这么个情况。有些网站本身也是通过提供 VPS 盈利的，所以他们会在前端显示的时候，做一些加密处理。

比如: [http://www.site-digger.com/html/articles/20110516/proxieslist.html](http://www.site-digger.com/html/articles/20110516/proxieslist.html)

当时，我很简单的以为，他和其他的网站一样，直接脱光了等我爬。想都没想，直接通用爬虫上去爬。发现结果是空。就很奇怪啊。然后就看了他的源码:

```
<tr>
    <td><script>document.write(decrypt("4A41BUVh2nIx3Ubh9RoGWtowBUlFhSM0jiG6UMvLR68="));</script></td>
    <td>Transparent</td>
    <td>马来西亚</th>
    <th>1</th>
</tr>
<tr>
    <td><script>document.write(decrypt("f5ue4pOb6+oO/S4sYbjF2w=="));</script></td>
    <td>Transparent</td>
    <td>中国</th>
    <th>0</th>
</tr>
```

当时就瞎了。还带这么玩的啊。当时也没细看，看到最后的等于号，第一反应是 Base64，于是试了下，发现不对。于是开始认真了。

首先直接看源码，看到这么一段：
```
<script language="javascript">
var baidu_union_id = "8636d4147d6d11e6";
function decrypt(d) {
    var b = CryptoJS.enc.Latin1.parse(baidu_union_id);
    var c = b;
    var a = CryptoJS.AES.decrypt(d, b, {
        iv: c,
        padding: CryptoJS.pad.ZeroPadding
    });
    return a.toString(CryptoJS.enc.Utf8)
};
</script>
```

所以就很清楚了，AES 加密。但是因为我 JS 是渣啊。看到 *var b = CryptoJS.enc.Latin1.parse(baidu_union_id);* ,就慌了，这个是用特定字符集解析那个字符串？但那个就是 ascii 字符啊，不应该在不同字符集里表现不一样啊。所以还很傻逼的 console.log(b) 了。结果是个长度为 4 的数组。

所以，最后的最后，还是得用[工具](https://blog.zhengxianjun.com/online-tool/crypto/aes/)帮忙:
> ![解密](./images/decrypt-1.png)

中途因为不懂 JS，无奈去恶补了 AES 的概念。想想也是挺搞笑的。我只是想写个爬虫而已啊 = =。

最后就是写 Java 对应的解密代码了。但是，但是，但是。网上的诸多教程都是错的。都是错的。都是错的。

AES 的填充方式，Java 里就有：

```
算法/模式/填充                16字节加密后数据长度        不满16字节加密后长度
AES/CBC/NoPadding             16                          不支持
AES/CBC/PKCS5Padding          32                          16
AES/CBC/ISO10126Padding       32                          16
AES/CFB/NoPadding             16                          原始数据长度
AES/CFB/PKCS5Padding          32                          16
AES/CFB/ISO10126Padding       32                          16
AES/ECB/NoPadding             16                          不支持
AES/ECB/PKCS5Padding          32                          16
AES/ECB/ISO10126Padding       32                          16
AES/OFB/NoPadding             16                          原始数据长度
AES/OFB/PKCS5Padding          32                          16
AES/OFB/ISO10126Padding       32                          16
AES/PCBC/NoPadding            16                          不支持
AES/PCBC/PKCS5Padding         32                          16
AES/PCBC/ISO10126Padding      32                          16
```

但是，网上的很多示例代码，只会写出来 PKCS5Padding 这个值。所以这边饶了点远路。

所以，这边对应的 Java 解密代码如下:

```

package predator.vps.crawler.parser.impl;

import predator.vps.crawler.model.ProxyModel;
import predator.vps.crawler.net.Config;
import predator.vps.crawler.net.HttpClientUtils;
import predator.vps.crawler.parser.AParser;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Mike
 * @project predator-vps-crawler
 * @date 9/18/16, 2:46 PM
 * @e-mail mike@mikecoder.cn
 */
public class SDParser extends AParser {

    private static final String regex   = "decrypt\\(\"(.*?)\"\\)";
    private static final String ivRegex = "baidu_union_id = \"(.*?)\";";

    protected ArrayList<ProxyModel> parse(String htmlContent) {
        ArrayList<ProxyModel> res = new ArrayList<ProxyModel>();
        String iv = "";
        Pattern pattern = Pattern.compile(ivRegex);
        Matcher matcher = pattern.matcher(htmlContent);
        while (matcher.find()) {
            iv = matcher.group(1);
        }
        pattern = Pattern.compile(regex);
        matcher = pattern.matcher(htmlContent);
        while (matcher.find()) {
            String encrypt = matcher.group(1);
            try {
                String decrypt = AESPlus.decrypt(iv, encrypt, iv, AESPlus.ZERO_CBC_PADDING);
                ProxyModel proxyModel = new ProxyModel();
                String[] proxy = decrypt.split(":");
                proxyModel.setIp(proxy[0].trim());
                proxyModel.setPort(Integer.valueOf(proxy[1].trim()));
                proxyModel.setRates(new int[20]);
                res.add(proxyModel);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return res;
    }

    static class AESPlus {

        public static final String ZERO_CBC_PADDING     = "AES/CBC/NoPadding";
        public static final String PKCS5_CBC_PADDING    = "AES/CBC/PKCS5Padding";
        public static final String ISO10126_CBC_PADDING = "AES/CBC/ISO10126Padding";

        public static String encrypt(String strKey, String strIn, String strIV, String strPadding)
                throws Exception
        {
            SecretKeySpec skeySpec = getKey(strKey);
            Cipher cipher = Cipher.getInstance(strPadding);
            IvParameterSpec iv = new IvParameterSpec(strIV.getBytes());
            cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);
            byte[] encrypted = cipher.doFinal(strIn.getBytes());

            return new BASE64Encoder().encode(encrypted);
        }

        public static String decrypt(String strKey, String strIn, String strIV, String strPadding)
                throws Exception
        {
            SecretKeySpec skeySpec = getKey(strKey);
            Cipher cipher = Cipher.getInstance(strPadding);
            IvParameterSpec iv = new IvParameterSpec(strIV.getBytes());
            cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);
            byte[] encrypted1 = new BASE64Decoder().decodeBuffer(strIn);

            byte[] original = cipher.doFinal(encrypted1);
            return new String(original);
        }

        private static SecretKeySpec getKey(String strKey) throws Exception {
            byte[] arrBTmp = strKey.getBytes();
            byte[] arrB = new byte[16]; // 创建一个空的16位字节数组（默认值为0）

            for (int i = 0; i < arrBTmp.length && i < arrB.length; i++) {
                arrB[i] = arrBTmp[i];
            }

            return new SecretKeySpec(arrB, "AES");
        }
    }

    public static void main(String[] args) throws Exception {
        String html = HttpClientUtils.getContentByUrl(Config.VPS_LIST_URL[1]);
        System.out.println(html);
        SDParser sdParser = new SDParser();
        System.out.println(sdParser.parse(html));
    }
}
```

其实，最近真的在准备其他事情，技术上确实上少了很多时间。不过，上班的闲暇时间，还是可以玩的。 : ）
