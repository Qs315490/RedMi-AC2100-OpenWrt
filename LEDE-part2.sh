#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: LEDE-part2.sh
# Description: LEDE DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate
# 修改设备名称
#sed -i 's/OpenWrt/HMAC2100/g' package/base-files/files/bin/config_generate
# 修改时区(貌似没有起作用)
#sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate
#sed -i "/timezone/a\\\t\tset system.@system[-1].zonename='Asia\/Shanghai'" package/base-files/files/bin/config_generate
# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
