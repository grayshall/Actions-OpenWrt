#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-darkmatter/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/Y-Router/g' package/base-files/files/bin/config_generate

#change linux_target_kernel
#sed -i 's/KERNEL_PATCHVER:= ./KERNEL_PATCHVER:=6.1/g' openwrt/target/linux/rockchip/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:= ./KERNEL_TESTING_PATCHVER:=6.6/g' openwrt/target/linux/rockchip/Makefile
#sed -i 's/LINUX_VERSION-6.1 = ./LINUX_VERSION-6.1 = .89/g' openwrt/include/kernel/kernel-6.1
#sed -i 's/LINUX_KERNEL_HASH-6.1. ./LINUX_KERNEL_HASH-6.1.89 = 12bab8e092618d1d4eeaf4201e6e70054c94896198956bd84ff0e908b0264719/g' openwrt/include/kernel/kernel-6.1

# 强制修改默认的 ROOTFS 分区大小为 512MB
sed -i 's/^[ \t]*CONFIG_TARGET_ROOTFS_PARTSIZE=.*/CONFIG_TARGET_ROOTFS_PARTSIZE=1008/g' .config

# 如果文件中没有这一行，则在末尾追加，确保万无一失
if ! grep -q "CONFIG_TARGET_ROOTFS_PARTSIZE=" .config; then
  echo "CONFIG_TARGET_ROOTFS_PARTSIZE=1008" >> .config
fi
