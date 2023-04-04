mkdir -p $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core

# 为luci-app-openclash添加内核
git clone --depth 1 --branch core https://github.com/vernesong/OpenClash.git OpenClash-core
rm OpenClash-core/*/*/clash-linux-amd64-v3*
tar xOvz OpenClash-core/master/dev/clash-linux-amd64.tar.gz > $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core/clash
gunzip -c OpenClash-core/master/premium/clash-linux-amd64*.gz > $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core/clash_tun
tar xOvz OpenClash-core/master/meta/clash-linux-amd64.tar.gz > $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core/clash_meta
chmod +x $GITHUB_WORKSPACE/openwrt/files/etc/openclash/core/clash*

# 为luci-app-openclash添加外部数据
GEOIP_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
GEOSITE_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"
wget -qO- $GEOIP_URL > $GITHUB_WORKSPACE/openwrt/files/etc/openclash/GeoIP.dat
wget -qO- $GEOSITE_URL > $GITHUB_WORKSPACE/openwrt/files/etc/openclash/GeoSite.dat
