# 加载luci-app-openclash

git clone --depth 1 --branch master https://github.com/vernesong/OpenClash.git
mv OpenClash/luci-app-openclash $BUILDROOT/package

# 加载luci-app-diskman

#mkdir -p $BUILDROOT/package/luci-app-diskman && \
#wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/applications/luci-app-diskman/Makefile -O $BUILDROOT/package/luci-app-diskman/Makefile
#mkdir -p $BUILDROOT/package/parted && \
#wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O $BUILDROOT/package/parted/Makefile
