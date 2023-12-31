# 利用make defconfig可生成完整.config文件
echo 'CONFIG_TARGET_x86=y' >> $BUILDROOT/.config
echo 'CONFIG_TARGET_x86_64=y' >> $BUILDROOT/.config
echo 'CONFIG_TARGET_x86_64_DEVICE_generic=y' >> $BUILDROOT/.config

# 自定义固件基础
echo 'CONFIG_LUCI_LANG_zh_Hans=y' >> $BUILDROOT/.config
echo 'CONFIG_PACKAGE_luci=y' >> $BUILDROOT/.config
echo 'CONFIG_PACKAGE_luci-ssl=y' >> $BUILDROOT/.config
echo 'CONFIG_PACKAGE_git-http=y' >> $BUILDROOT/.config
echo 'CONFIG_TARGET_ROOTFS_PARTSIZE=3072' >> $BUILDROOT/.config

# 添加luci-app-openclash
echo 'CONFIG_PACKAGE_luci-app-openclash=y' >> $BUILDROOT/.config
echo '# CONFIG_PACKAGE_dnsmasq is not set' >> $BUILDROOT/.config
echo 'CONFIG_PACKAGE_luci-compat=y' >> $BUILDROOT/.config
echo 'CONFIG_PACKAGE_wget-ssl=y' >> $BUILDROOT/.config

# 添加luci-app-dockerman
echo 'CONFIG_PACKAGE_luci-app-dockerman=y' >> $BUILDROOT/.config
echo 'CONFIG_PACKAGE_dockerd=y' >> $BUILDROOT/.config
echo 'CONFIG_PACKAGE_docker-compose=y' >> $BUILDROOT/.config

# 添加其他app
echo 'CONFIG_PACKAGE_luci-app-aria2=y' >> $BUILDROOT/.config
echo 'CONFIG_PACKAGE_luci-app-samba4=y' >> $BUILDROOT/.config
