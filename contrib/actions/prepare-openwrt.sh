#!/usr/bin/env bash

set -e

OPENWRT_REPO=https://github.com/herbetom/openwrt.git
OPENWRT_BRANCH=openwrt-23.05-oob

OPENWRT_REPO=${OPENWRT_REPO:-https://github.com/openwrt/openwrt.git}
OPENWRT_BRANCH=${OPENWRT_BRANCH:-main}

git clone "${OPENWRT_REPO}" -b "${OPENWRT_BRANCH}" openwrt

cd openwrt

./scripts/feeds update -a
./scripts/feeds install -a

touch feeds.conf

echo "src-git packages https://github.com/herbetom/openwrt-packages.git;openwrt-23.05-quectel-timesync" >> feeds.conf
#echo "src-git packages https://git.openwrt.org/feed/packages.git;openwrt-23.05" >> feeds.conf
echo "src-git luci https://git.openwrt.org/project/luci.git;openwrt-23.05" >> feeds.conf
echo "src-git routing https://git.openwrt.org/feed/routing.git;openwrt-23.05" >> feeds.conf
echo "src-git telephony https://git.openwrt.org/feed/telephony.git;openwrt-23.05" >> feeds.conf
