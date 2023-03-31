# 添加luci-app-openclash
git clone --depth 1 --branch master https://github.com/vernesong/OpenClash.git
mv OpenClash/luci-app-openclash openwrt/package
# 添加luci-app-diskman
mkdir -p openwrt/package/luci-app-diskman && \
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/applications/luci-app-diskman/Makefile -O openwrt/package/luci-app-diskman/Makefile
mkdir -p openwrt/package/parted && \
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O openwrt/package/parted/Makefile
# 添加luci-app-autoreboot
git clone https://github.com/zxl78585/luci-app-autoreboot.git openwrt/package/luci-app-autoreboot