#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: OpenWrt-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 自定义函数
addFeeds(){
  if [ $# == 2 ];then
    echo src-git $1 $2 >> feeds.conf.default
  fi
}

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加 feed 源
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git custom https://github.com/kiddin9/openwrt-packages.git;master' feeds.conf.default
addFeeds custom https://github.com/kiddin9/openwrt-packages.git

# 添加软件包源
# git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon  #新的argon主题 (custom已附带)
# git clone --depth=1 https://github.com/llccd/openwrt-fullconenat.git package/openwrt-fullconenat #全锥形NAT (custom已附带)
# git clone --depth=1 https://github.com/peter-tank/luci-app-fullconenat package/luci-app-fullconenat #全锥形NAT LUCI界面 (custom已附带)
