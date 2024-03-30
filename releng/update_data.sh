#!/bin/sh

TO_DIR="/d/shared/damien/dev/lotrocompanion/releases/work/LotRO Companion/app"
TO_DATA="${TO_DIR}/data"
TO_DATA_LORE="${TO_DATA}/lore"
TO_DATA_CONFIG="${TO_DATA}/config"
TO_LIB="${TO_DIR}/lib"
FROM_DIR=/d/dev/git/lotro-data
FROM_DIR_ITEMS=/d/dev/git/lotro-items-db
FROM_DIR_MAPS=/d/dev/git/lotro-maps-db

# Lore
\rm -rf "${TO_DATA_LORE}"
mkdir "${TO_DATA_LORE}"
cp -rf ${FROM_DIR}/lore/* "${TO_DATA_LORE}"
# Items
cp ${FROM_DIR_ITEMS}/*.xml "${TO_DATA_LORE}"
# Maps
\rm -rf "${TO_DATA_LORE}"/maps/*
cp -rf ${FROM_DIR_MAPS}/categories "${TO_DATA_LORE}"/maps
cp -rf ${FROM_DIR_MAPS}/indexes "${TO_DATA_LORE}"/maps
cp -rf ${FROM_DIR_MAPS}/markers "${TO_DATA_LORE}"/maps
cp -rf ${FROM_DIR_MAPS}/*.xml "${TO_DATA_LORE}"/maps
mkdir "${TO_DATA_LORE}"/maps/maps
cp -rf ${FROM_DIR_MAPS}/maps/*.xml "${TO_DATA_LORE}"/maps/maps

# TODO: zip archives for icons:
# classes, emotes, items, races, relics, skills, traits
# 
# TODO: compile code
# TODO: HISTORY and misc doc
