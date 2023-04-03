# 使用官方.config文件
wget https://downloads.openwrt.org/releases/$(git describe --tags --abbrev=0 --exact-match | cut -c2-)/targets/x86/64/config.buildinfo -O .config

# 附加更改到.config文件
#echo '# CONFIG_PACKAGE_dnsmasq is not set' >> .config
#echo 'CONFIG_LUCI_LANG_zh_Hans=y' >> .config
#echo 'CONFIG_PACKAGE_docker-compose=y' >> .config
#echo 'CONFIG_PACKAGE_dockerd=y' >> .config
#echo 'CONFIG_PACKAGE_git-http=y' >> .config
#echo 'CONFIG_PACKAGE_wget-ssl=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-aria2=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-dockerman=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-openclash=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-samba4=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-diskman=y' >> .config
#echo 'CONFIG_TARGET_ROOTFS_PARTSIZE=1024' >> .config
