# 利用make defconfig生成基础.config文件
echo 'CONFIG_TARGET_x86=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_TARGET_x86_64=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_TARGET_x86_64_DEVICE_generic=y' >> $GITHUB_WORKSPACE/openwrt/.config

# 自定义固件基础
echo 'CONFIG_LUCI_LANG_zh_Hans=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_PACKAGE_luci=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_PACKAGE_luci-ssl-openssl=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_PACKAGE_git-http=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_TARGET_ROOTFS_PARTSIZE=1024' >> $GITHUB_WORKSPACE/openwrt/.config

# 添加luci-app-openclash
echo 'CONFIG_PACKAGE_luci-app-openclash=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo '# CONFIG_PACKAGE_dnsmasq is not set' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_PACKAGE_luci-compat=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_PACKAGE_wget-ssl=y' >> $GITHUB_WORKSPACE/openwrt/.config

# 添加luci-app-dockerman
echo 'CONFIG_PACKAGE_luci-app-dockerman=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_PACKAGE_dockerd=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_PACKAGE_docker-compose=y' >> $GITHUB_WORKSPACE/openwrt/.config

# 添加其他app
echo 'CONFIG_PACKAGE_luci-app-aria2=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_PACKAGE_luci-app-samba4=y' >> $GITHUB_WORKSPACE/openwrt/.config
echo 'CONFIG_PACKAGE_luci-app-diskman=y' >> $GITHUB_WORKSPACE/openwrt/.config
