#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.1.31/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/zza-openwrt/g' package/base-files/files/bin/config_generate


#Pass Wall
git clone --depth=1 --single-branch --branch "luci" https://github.com/xiaorouji/openwrt-passwall.git ./pw_luci
git clone --depth=1 --single-branch --branch "packages" https://github.com/xiaorouji/openwrt-passwall.git ./pw_packages

#增加应用过滤OpenAppFilter
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
#增加ssr
#rm -rf package/helloworld
#git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
#增加vlmcsd
git clone https://github.com/openwrt-develop/luci-app-vlmcsd.git package/luci-app-vlmcsd

