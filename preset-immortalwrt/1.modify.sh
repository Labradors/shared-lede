#!/usr/bin/env bash

# modify login IP
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
HEADER_FILE=feeds/luci/themes/luci-theme-bootstrap/ucode/template/themes/bootstrap/header.ut
sed -i 's/<a class="brand" href="\/">{{ striptags(boardinfo.hostname ?? '"'"'?'"'"') }}<\/a>/<a class="brand" href="\/">专网网闸<\/a>/g' "$HEADER_FILE"

# replace geodata source
. $(dirname $0)/../extra-files/update-geodata.sh
