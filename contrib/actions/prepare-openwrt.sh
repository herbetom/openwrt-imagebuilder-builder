#!/bin/sh

set -e

OPENWRT_REPO=https://github.com/openwrt/openwrt.git
OPENWRT_BRANCH=openwrt-23.05

git clone "${OPENWRT_REPO}" -b "${OPENWRT_BRANCH}" openwrt


cd openwrt

./scripts/feeds update -a
./scripts/feeds install -a

touch .config

echo "CONFIG_IB=y" >> .config

echo "CONFIG_PACKAGE_batctl-full=y" >> .config
echo "CONFIG_PACKAGE_bind-dig=y" >> .config
echo "CONFIG_PACKAGE_curl=y" >> .config
echo "CONFIG_PACKAGE_ethtool-full=y" >> .config
echo "CONFIG_PACKAGE_htop=y" >> .config
echo "CONFIG_PACKAGE_ip-bridge=y" >> .config
echo "CONFIG_PACKAGE_ip-full=y" >> .config
echo "CONFIG_PACKAGE_iperf3=y" >> .config
echo "CONFIG_PACKAGE_iw=y" >> .config
echo "CONFIG_PACKAGE_iwinfo=y" >> .config
echo "CONFIG_PACKAGE_jq=y" >> .config
echo "CONFIG_PACKAGE_kmod-batman-adv=y" >> .config
echo "CONFIG_PACKAGE_kmod-fs-exfat=y" >> .config
echo "CONFIG_PACKAGE_kmod-fs-vfat=y" >> .config
echo "CONFIG_PACKAGE_kmod-iptunnel=y" >> .config
echo "CONFIG_PACKAGE_kmod-usb-net=y" >> .config
echo "CONFIG_PACKAGE_kmod-usb-serial=y" >> .config
echo "CONFIG_PACKAGE_kmod-usb-serial-cp210x=y" >> .config
echo "CONFIG_PACKAGE_kmod-usb-serial-ftdi=y" >> .config
echo "CONFIG_PACKAGE_kmod-usb-serial-pl2303=y" >> .config
echo "CONFIG_PACKAGE_kmod-usb-storage=y" >> .config
echo "CONFIG_PACKAGE_kmod-usb-wdm=y" >> .config
echo "CONFIG_PACKAGE_kmod-vxlan=y" >> .config
echo "CONFIG_PACKAGE_kmod-wireguard=y" >> .config
echo "CONFIG_PACKAGE_lsblk=y" >> .config
echo "CONFIG_PACKAGE_lua=y" >> .config
echo "CONFIG_PACKAGE_luci=y" >> .config
echo "CONFIG_PACKAGE_mtr-nojson=y" >> .config
echo "CONFIG_PACKAGE_nano=y" >> .config
echo "CONFIG_PACKAGE_netcat=y" >> .config
echo "CONFIG_PACKAGE_picocom=y" >> .config
echo "CONFIG_PACKAGE_qmi-utils=y" >> .config
echo "CONFIG_PACKAGE_tcpdump=y" >> .config
echo "CONFIG_PACKAGE_tmux=y" >> .config
echo "CONFIG_PACKAGE_usbutils=y" >> .config
echo "CONFIG_PACKAGE_vxlan=y" >> .config
echo "CONFIG_PACKAGE_wireguard-tools=y" >> .config
echo "CONFIG_PACKAGE_wwan=y" >> .config
echo "CONFIG_PACKAGE_luci-proto-qmi=y" >> .config
echo "CONFIG_PACKAGE_luci-proto-wireguard=y" >> .config
echo "CONFIG_PACKAGE_quectel-timesync=y" >> .config
echo "CONFIG_PACKAGE_diffutils=y" >> .config
echo "CONFIG_PACKAGE_hostapd-wolfssl=y" >> .config
echo "CONFIG_PACKAGE_luaposix=y" >> .config
echo "CONFIG_PACKAGE_libiwinfo-lua=y" >> .config
echo "CONFIG_PACKAGE_libuci-lua=y" >> .config
echo "CONFIG_PACKAGE_lua-cjson=y" >> .config
echo "CONFIG_PACKAGE_usteer=y" >> .config
