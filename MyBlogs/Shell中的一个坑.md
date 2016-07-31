Shell 中的一个坑(文件名带有空格时操作)
---


####起因
今天本来想给 U 盘换歌，所以就直接把自己的网易云音乐下载的音乐拷进去，结果发现 U 盘的大小不够(最近比较穷，买不起3GB 以上的 U盘只能拿好多年前的3G U 盘先用着)。

差了400MB，想到车载电脑也放不了 flac 格式的音乐文件，所以就直接写脚本删除这些非 mp3 格式的歌曲文件。

####初次尝试
于是按照之前的 allCode.sh 脚本，直接改了个 rmFileByExtension.sh 的脚本，其中，核心代码部分是这样的：

```
function searchFiles() {
    echo "find all $filter files"
    if [[ x$filter == x ]]; then
        if [[ $sureRm == false ]]; then
            read -p "No extension, so dangerous, do you want go on? yes|no : " order
            if [[ $order != yes ]]; then
                exit
            else
                sureRm=true
            fi
        fi
        cfilelist=$(ls)
    else
        cfilelist=$(ls | grep "\.$filter$")
    fi
    for cfilename in $cfilelist
    do
        echo $cfilename
        if [ -f "$(pwd)/$cfilename" ]; then
            echo "$(pwd)/$cfilename"
            rm -f "$(pwd)/$cfilename"
        fi
    done

    dirlist=$(ls)
    for dirname in $dirlist
    do
        echo $dirname
        if [ -d "$dirname" ]; then
            cd $dirname
            searchFiles
            cd ..
        fi
    done
}

cd $nowdir
searchFiles
echo "finish rm code."
echo "done"
```

但是，跑出来的结果就是，无法找到文件进行删除。这个文件的目录是这样的：

```
➜  网易云音乐 tree -N
.
├── A Fine Frenzy
│   └── One Cell In The Sea
│       └── A Fine Frenzy - Almost Lover.mp3
├── 陈奕迅
│   ├── Stranger Under My Skin
│   │   └── 陈奕迅,王菲 - 因为爱情.flac
│   ├── 你的陈奕迅 国语精选
│   │   └── 陈奕迅 - 你的背包.flac
│   └── 认了吧
│       └── 陈奕迅 - 好久不见.flac
├── 陈粒
│   └── 未收录的单曲
│       └── 陈粒 - 历历万乡.mp3
├── 韩红
│   └── 醒了
│       └── 韩红 - 天亮了.mp3
├── 风见学园蔚蓝组
│   └── 残酷却美丽的世界
│       └── 祈Inory - 残酷却美丽的世界.mp3
├── 马頔
│   └── 南山南
│       └── 马頔 - 南山南.flac
├── 黄仲昆
│   └── 爱与承诺
│       └── 黄仲昆 - 有多少爱可以重来.mp3
├── 黄晓明
│   └── 光阴的故事
│       └── 黄晓明,邓超,佟大为 - 光阴的故事.mp3
├── 黄灿
│   └── 黄玫瑰
│       └── 黄灿 - 黄玫瑰.mp3
└── 黒石ひとみ
    └── Angel Feather Voice
        └── 黒石ひとみ - Stories.mp3
```

可以看到，基本上出现的都包含有空格和非 ascii 码字符。所以上面的 shell 脚本中，会把空格作为分隔符进行划分数组。

所以，*A Fine Frenzy* 在 for 循环中，是分成了 ['A', 'Fine', 'Frenzy'] 这样的一个字符串数组。所以导致后续的逻辑失败。

####解决办法
最后只能从输入部分开始修改。

```
function findAllFile() {
    echo $(pwd)
    ls | while read var
        do
            if [[ -f $var ]]; then
                echo 'is file' $var

            fi
            if [[ -d $var ]]; then
                cd "$(pwd)/$var"
                echo 'into ' $var
                findAllFile
                cd ..
            fi
        done
}

findAllFile
```

修改之后的代码如上。 一个很取巧的方法使用 read 命令。read 命令的一个好处就是可以按行读取。而不是按分隔符读取。


####其他方式
这个也是一个小坑了。网上找到的一个解决办法就是这样的代码：

```
OLD_IFS="$IFS"
IFS="\n"
cfilelist=($cfilelist)
for cfilename in ${cfilelist[@]}
do
    echo $cfilename
    if [ -f "$(pwd)/$cfilename" ]; then
        echo "$(pwd)/$cfilename"
        rm -f "$(pwd)/$cfilename"
    fi
done
```

设置自己的分隔符，然后进行切分。实测效果不好。
