# 使用官方.config文件
#wget https://downloads.openwrt.org/releases/$(git describe --tags --abbrev=0 --exact-match | cut -c2-)/targets/x86/64/config.buildinfo -O .config

# 利用make defconfig生成基础.config文件
echo 'CONFIG_TARGET_x86=y' >> .config
echo 'CONFIG_TARGET_x86_64=y' >> .config
echo 'CONFIG_TARGET_x86_64_DEVICE_generic=y' >> .config

# 自定义固件基础
echo 'CONFIG_LUCI_LANG_zh_Hans=y' >> .config
echo 'CONFIG_PACKAGE_luci=y' >> .config
echo 'CONFIG_PACKAGE_luci-ssl-openssl=y' >> .config
echo 'CONFIG_PACKAGE_git-http=y' >> .config
echo 'CONFIG_TARGET_ROOTFS_PARTSIZE=1024' >> .config

# 添加luci-app-openclash
echo 'CONFIG_PACKAGE_luci-app-openclash=y' >> .config
echo '# CONFIG_PACKAGE_dnsmasq is not set' >> .config
echo 'CONFIG_PACKAGE_luci-compat=y' >> .config
echo 'CONFIG_PACKAGE_wget-ssl=y' >> .config

# 添加luci-app-dockerman
echo 'CONFIG_PACKAGE_luci-app-dockerman=y' >> .config
echo 'CONFIG_PACKAGE_dockerd=y' >> .config
echo 'CONFIG_PACKAGE_docker-compose=y' >> .config

# 添加其他app
echo 'CONFIG_PACKAGE_luci-app-aria2=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-samba4=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-diskman=y' >> .config
