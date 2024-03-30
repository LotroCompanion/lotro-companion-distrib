#!/bin/sh

TO_DIR="/d/shared/damien/dev/lotrocompanion/releases/EoA/work/LotRO Lore Database/app"
TO_DATA="${TO_DIR}/data"
TO_DATA_LORE="${TO_DATA}/lore"
TO_DATA_CONFIG="${TO_DATA}/config"
TO_LIB="${TO_DIR}/lib"
FROM_DIR=/d/dev/git/lotro-data-legacy/data/lore
FROM_LIB=/d/dev/git/lotro-data-legacy/lib

cp -rf ${FROM_DIR}/* "${TO_DATA_LORE}"
cp ${FROM_LIB}/*.zip "${TO_LIB}"

# TODO: item icons
# TODO: compile code
# TODO: HISTORY and misc doc
#cp ${FROM_DIR}/emotes/*.zip "${TO_LIB}"
#cp ${FROM_DIR}/skills/*.zip "${TO_LIB}"
#cp ${FROM_DIR}/traits/*.zip "${TO_LIB}"
#cp ${FROM_DIR_RELICS}/*.zip "${TO_LIB}"
