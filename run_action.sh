#!/usr/bin/env bash
set -e
TAG="eager-garden-eager-harbor"
LIB="stout-lantern.a"
URL="https://github.com/wfubhei/oakgriddle/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
