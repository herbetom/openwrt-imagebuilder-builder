#!/bin/sh

set -e

source ./contrib/actions/seperate-target.sh "$1"

echo "configuring OpenWrt for ${OPENWRT_TARGET}"

cd openwrt

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

echo "CONFIG_TARGET_ath79=y" >> .config
echo "CONFIG_TARGET_ath79_nand=y" >> .config
echo "CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-xe300=y" >> .config

echo "CONFIG_TARGET_${OPENWRT_PRITARGET}=y" >> .config
echo "CONFIG_TARGET_${OPENWRT_PRITARGET}_${OPENWRT_SUBTARGET}=y" >> .config

echo "CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-xe300=y" >> .config
