#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: OpenWrt-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

#Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate
# 以下配置已改为固件内的defsetting服务进行设置
# 修改设备名称
#sed -i 's/OpenWrt/HMAC2100/g' package/base-files/files/bin/config_generate
# 修改时区(貌似没有起作用)
#sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate
#sed -i "/timezone/a\\\t\tset system.@system[-1].zonename='Asia\/Shanghai'" package/base-files/files/bin/config_generate
# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 报错修复
ln -s /usr/bin/upx /workdir/openwrt/staging_dir/host/bin/

#允许root用户编译
export FORCE_UNSAFE_CONFIGURE=1
