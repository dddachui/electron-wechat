# 说明

1. 如果扫码之后不能进去，但进程还在，可能是bug了，用命令启动试试，也可以删除~/.config/weixin试试

2. 不稳定

3. 脚本里面桌面图标还没处理好,在桌面可能不显示图标,手动搞搞

4. 如果root用户想启动微信，需要修改启动命令，在命令后加--no-sandbox

# 来源

项目里面所有涉及的weixin文件均来自于openkylin下载的deb包，进行解压整理，方法如下

- 解压deb包

```
dpkg-dep -x xxx.deb /path/to/resource
```

- 解压出脚本

```
mkdir /tmp/wechat
dpkg-deb -e xxx.deb /tmp/wecaht/DEBIAN
```

# 安装方法
本体安装包链接 链接：https://pan.baidu.com/s/1-OjPt5uRrjdaa_ByOTQibA?pwd=1234 
将下载的tar.gz压缩包也放到项目里面
```
sh install.sh
```

# 启动
- 命令行输入
```
weixin
```
- 使用图标启动 $user换成具体的用户名(root除外)
```
cp weixin.desktop ~/Desktop
chown $user:$user ~/Desktop/weixin.desktop
```