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
sed -i 's/192.168.1.1/192.168.31.100/g' package/base-files/files/bin/config_generate

# add upx
mv ./upx ./staging_dir/host/bin && chmod +x ./staging_dir/host/bin/upx

# fix dhcp/dns
patch -p1 < package/own/patches/dhcp-dns.patch

# batman-adv
#rm feeds/routing/batman-adv/patches/0004-Revert-batman-adv-genetlink-make-policy-common-to-fa.patch
#rm feeds/routing/batman-adv/patches/0037-batman-adv-allow-netlink-usage-in-unprivileged-conta.patch

# golang
rm -rf ./feeds/packages/lang/golang && cp -r ./package/own/golang ./feeds/packages/lang