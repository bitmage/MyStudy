UBuntu OpenVPN 环境搭建
---

### *PS: 一键安装运行脚本在最后*

首先安装openvpn，通过如下命令:

```
sudo apt-get install openvpn
```

安装完成之后，可以在/etc/目录下产生/openvpn目录。然后进入这个目录下载如下两个文件，[ca.crt](http://gitlab.mogujie.org/ziyuan/devbox/blob/master/moguvpn-conf/ca.crt),[config.ovpn](http://gitlab.mogujie.org/ziyuan/devbox/blob/master/moguvpn-conf/config.ovpn)。

```
cd /etc/openvpn
#将两个文件放在该目录下
```

然后在这个目录中使用root权限运行openvpn，命令如下:

```
cd /etc/openvpn #just make sure you are in correct path
sudo openvpn config.opvn
```

最后就可以输入用户名和密码，成功连接vpn了。


##--------------华丽的分割线-------------


也可以使用如下的一键安装脚本[ubuntu-install-openvpn.sh]()

```
sudo apt-get install openvpn
sudo mkdir /etc/openvpn/moguvpn-conf
cd /etc/openvpn/moguvpn-conf
sudo wget http://gitlab.mogujie.org/ziyuan/devbox/blob/master/moguvpn-conf/ca.crt
sudo wget http://gitlab.mogujie.org/ziyuan/devbox/blob/master/moguvpn-conf/config.opvn
```

然后就是一键启动脚本[ubuntu-start-openvpn.sh]()

```
cd /etc/openvpn/moguvpn-conf
sudo openvpn config.ovpn
```

使用方法为:`source **.sh`,不要使用`sh *.sh`和`./**.sh`，避免出现cd不到指定目录的情况。

然后就可以等着输入用户名和密码，之后便是自动的连接。等到出现如下文字的时候说明已经成功启动openvpn，
> ![image](images/openvpn-1.png)

接着就可以使用ssh连接上juanniu125来进行调试和修改了。



