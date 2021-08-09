#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: LEDE-part1.sh
# Description: LEDE DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
rm -rf package/lean/luci-theme-argon
# 添加软件包源
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon -b 18.06  #新的argon主题
