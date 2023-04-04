# 加载luci-app-openclash
git clone --depth 1 --branch master https://github.com/vernesong/OpenClash.git OpenClash-master
mv OpenClash-master/luci-app-openclash $GITHUB_WORKSPACE/openwrt/package

# 加载luci-app-diskman
mkdir -p $GITHUB_WORKSPACE/openwrt/package/luci-app-diskman && \
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/applications/luci-app-diskman/Makefile -O $GITHUB_WORKSPACE/openwrt/package/luci-app-diskman/Makefile
mkdir -p $GITHUB_WORKSPACE/openwrt/package/parted && \
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O $GITHUB_WORKSPACE/openwrt/package/parted/Makefile
