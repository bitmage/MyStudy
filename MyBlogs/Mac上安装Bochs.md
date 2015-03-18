##Mac上安装Bochs
---
想开始写操作系统了，但是卡在Mac上编译Bochs上，看了几个issue，还是没有头绪，
因为Apple已经放弃了x11和carbon(有兴趣可以看[这文档](http://appleinsider.com/articles/12/02/18/mountain_lion_focuses_on_cocoa_drops_x11_and_deprecates_carbon)),
终于找到了如下的方法:

####第一步,安装SDL库
可以使用HomeBrew的方式:
`brew install sdl`

####第二步,Configure Bochs
```
./configure --enable-ne2000 \
            --enable-all-optimizations \
            --enable-cpu-level=6 \
            --enable-x86-64 \
            --enable-vmx=2 \
            --enable-pci \
            --enable-usb \
            --enable-usb-ohci \
            --enable-e1000 \
            --enable-debugger \
            --enable-disasm \
            --disable-debugger-gui \
            --with-sdl \
            --prefix=$HOME/opt/bochs
```

**这边的$HOME需要修改成你希望安装的目录**

####第三步,make and make install
毫无技术含量的`make & make install`


####可选步骤,加入path
```
export BXSHARE="$HOME/opt/bochs/share/bochs"
export PATH="$PATH:$HOME/opt/bochs/bin"
```

####主要参考:
+ [http://sourceforge.net/p/bochs/bugs/1204/](http://sourceforge.net/p/bochs/bugs/1204/)
+ [http://stackoverflow.com/questions/1677324/compiling-bochs-on-mac-os-x-snow-leopard](http://stackoverflow.com/questions/1677324/compiling-bochs-on-mac-os-x-snow-leopard)
