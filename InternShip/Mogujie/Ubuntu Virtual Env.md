UBuntu虚拟机开发环境搭建文档
---

+ 安装VirtualBox与Vagrant

```
sudo apt-get install virtualbox vagrant
```

+ 安装Rinetd,用于端口转发(local 80 to local 5001)

```
sudo apt-get install rinetd
```

+ 配置Rinetd。

```
sudo vim /etc/rinetd.conf
```
> 在最后一行或者是第一行加上:`127.0.0.1 80 127.0.0.1 5001`设置本地端口转发

+ 下载devbox

```
git clone http://gitlab.mogujie.org/fellowship/devbox.git
```

+ 下载源代码

```
cd
mkdir Sites
cd Sites
svn checkout http://svn.juangua.com/trunk/mogujie www.mogujie.com
```

+ 进入目录并开始运行虚拟机,此时需要保证80端口不被占用，可以先关闭apache2

```
sudo service apache2 stop
cd devbox
vagrant up
```

6. 即可，先是进行虚拟机的下载，然后就是启动，在浏览器中输入:`http://www.mogujie.me`,即可访问虚拟机网站。

<h3>高级用法</h3>

+ 修改本地的代码路径

```
    打开Vagrantfile， 找到
    config.vm.synced_folder "~/Sites/www.mogujie.com", "/var/www/html/www.mogujie.com"
    把“~/Sites/www.mogujie.com” 修改为你想要的本地代码路径即可
```

+ 想要SSH进入这个虚拟机

```
    命令： vagrant ssh 即可
```
