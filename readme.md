# 说明

1. 如果扫码之后不能进去，但进程还在，可能是bug了，用命令启动试试，也可以删除~/.config/weixin试试

2. 不稳定

3. 脚本里面桌面图标还没处理好,在桌面可能不显示图标,手动搞搞

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

