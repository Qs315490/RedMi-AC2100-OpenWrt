#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default

# 添加软件包源
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon  #新的argon主题
git clone --depth=1 https://github.com/mchome/openwrt-vlmcsd.git package/vlmcsd
git clone --depth=1 https://github.com/mchome/luci-app-vlmcsd.git package/luci-app-vlmcsd
git clone --depth=1 https://github.com/garypang13/luci-app-dnsfilter.git package/luci-app-dnsfilter
git clone --depth=1 https://github.com/sirpdboy/luci-app-advanced.git package/luci-app-advanced
#git clone --depth=1 https://github.com/tianiue/luci-app-bypass.git package/luci-app-bypass
git clone --depth=1 https://github.com/immortalwrt/luci-app-unblockneteasemusic-mini.git package/luci-app-unblockneteasemusic-mini
git clone --depth=1 https://github.com/awesome-openwrt/luci-app-arpbind.git package/luci-app-arpbind
git clone --depth=1 https://github.com/deplives/luci-app-turboacc.git package/luci-app-turboacc
