mkdir -p $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core

# 为luci-app-openclash添加内核文件
git clone --depth 1 --branch core https://github.com/vernesong/OpenClash.git OpenClash-core
rm OpenClash-core/*/*/clash-linux-amd64-v3*
tar xOvz OpenClash-core/master/dev/clash-linux-amd64.tar.gz > $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core/clash
gunzip -c OpenClash-core/master/premium/clash-linux-amd64*.gz > $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core/clash_tun
tar xOvz OpenClash-core/master/meta/clash-linux-amd64.tar.gz > $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core/clash_meta
chmod +x $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core/clash*
