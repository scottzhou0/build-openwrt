
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

# clone ssr
git clone -b ssr https://github.com/junfeng142/packages.git package/ssr

# Uncomment a feed source
#sed -i '/network/s/^/#/g' package/my/default-settings/files/zzz-default-settings

# kernel patch
#patch -p1 < ramips.patch
