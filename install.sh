#!/bin/bash
# wexin 2.1.9 
if [[ $(id -u) -ne 0 ]]; then
        echo "请使用超级管理员身份执行本程序..."
        exit
fi
tar -xvf weixin-2.1.9.tar.gz -C /opt
/usr/bin/cp lsb-release lsb-release-ukui /etc
/usr/bin/cp libactivation.so /usr/lib/
/usr/bin/cp .kyact /etc
chmod 644 /usr/lib/libactivation.so
chmod 4755 /opt/weixin/chrome-sandbox
/usr/bin/cp -r share/ /usr/
chmod 4755 /opt/weixin/chrome-sandbox
/usr/bin/cp weixin.desktop /usr/share/applications/
