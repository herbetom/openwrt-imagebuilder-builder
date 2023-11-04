#!/bin/sh

set -e

export OPENWRT_TARGET="$1"

PRITARGET=$(echo "${OPENWRT_TARGET}" | cut -d- -f1)
SUBTARGET=$(echo "${OPENWRT_TARGET}" | cut -d- -f2)

OPENWRT_TARGET_="${PRITARGET}_${SUBTARGET}"

echo "building ${OPENWRT_TARGET}"

cd openwrt

echo "CONFIG_TARGET_ipq40xx=y" >> .config
echo "CONFIG_TARGET_ipq40xx_generic=y" >> .config
echo "CONFIG_TARGET_ipq40xx_generic_DEVICE_aruba_ap-303=y" >> .config

echo "CONFIG_TARGET_${PRITARGET}=y" >> .config
echo "CONFIG_TARGET_${PRITARGET}_${SUBTARGET}=y" >> .config

echo "CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-xe300=y" >> .config

export BUILD_LOG=1

make -j$(nproc) defconfig
make -j$(nproc) download
make -j$(nproc) clean
make -j$(nproc) world

mv bin/targets/$PRITARGET/$SUBTARGET/ ../output
