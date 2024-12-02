# Load luci-app-openclash

git clone --depth 1 --branch master https://github.com/Speechless22/OpenClash.git
mv OpenClash/luci-app-openclash $BUILD_ROOT/package

# Load luci-app-diskman
mkdir -p $BUILD_ROOT/package/luci-app-diskman && \
wget https://raw.githubusercontent.com/Speechless22/luci-app-diskman/master/applications/luci-app-diskman/Makefile -O $BUILD_ROOT/package/luci-app-diskman/Makefile
mkdir -p $BUILD_ROOT/package/parted && \
wget https://raw.githubusercontent.com/Speechless22/luci-app-diskman/master/Parted.Makefile -O $BUILD_ROOT/package/parted/Makefile
