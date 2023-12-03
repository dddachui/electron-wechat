#!/bin/bash
version=2.1.9
if [[ $(id -u) -ne 0 ]]; then
        echo -e "\033[31;1m 请使用超级管理员身份执行本程序... \033[0m"
        exit
fi
if [ ! -f weixin-$version.tar.gz ]; then
        echo -e "\033[31;1m 找不到weixin-$version.tar.gz \033[0m"
        exit
else
        if ! md5sum -c packages.md5 >/dev/null; then
                echo -e "\033[31;1m 校验文件失败,请检查文件完整性 \033[0m"
                exit
        else
                tar -xf weixin-$version.tar.gz -C /opt
                ln -sf /opt/weixin/weixin /usr/bin/weixin
                /usr/bin/cp lsb-release lsb-release-openkylin /etc
                /usr/bin/cp libactivation.so /usr/lib/
                /usr/bin/cp .kyact /etc
                chmod 644 /usr/lib/libactivation.so
                chmod 4755 /opt/weixin/chrome-sandbox
                /usr/bin/cp -r share/ /usr/
                /usr/bin/cp weixin.desktop /usr/share/applications/
                echo -e "\033[32;1m 安装完成,使用方法请看readme.md \033[0m"
        fi
fi
