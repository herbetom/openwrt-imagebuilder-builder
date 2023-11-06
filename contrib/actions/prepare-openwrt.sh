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

