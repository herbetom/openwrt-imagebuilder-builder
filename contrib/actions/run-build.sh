#!/bin/sh

set -e

cd openwrt

export BUILD_LOG=1

make -j$(nproc) defconfig
make -j$(nproc) download
make -j$(nproc) clean
make -j$(nproc) world

mv "bin/targets/${OPENWRT_PRITARGET}/${OPENWRT_SUBTARGET}/" ../output
