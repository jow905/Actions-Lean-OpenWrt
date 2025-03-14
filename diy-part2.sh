#!/bin/bash
#============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.250/g' package/base-files/files/bin/config_generate

# Modify hostname
sed -i 's/LEDE/OpenWRT/g' package/base-files/files/bin/config_generate

# Modify WiFi name (SSID)
sed -i 's/LEDE/OpenWRT/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
