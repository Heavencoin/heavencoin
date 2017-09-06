#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/heavencoin.png
ICON_DST=../../src/qt/res/icons/heavencoin.ico
convert ${ICON_SRC} -resize 16x16 heavencoin-16.png
convert ${ICON_SRC} -resize 32x32 heavencoin-32.png
convert ${ICON_SRC} -resize 48x48 heavencoin-48.png
convert heavencoin-16.png heavencoin-32.png heavencoin-48.png ${ICON_DST}

