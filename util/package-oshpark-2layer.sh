#!/bin/bash

BOARD=$1
CAMFILE_DIR=$2
DATE="$(date +'%Y-%m-%d-%H%M')"
PACKAGE_DIR="$BOARD-oshpark-files"
rm -rf $PACKAGE_DIR
mkdir -p $PACKAGE_DIR 
cp "$CAMFILE_DIR/outputs/copper_top.gbr" $PACKAGE_DIR/$BOARD.GTL
cp "$CAMFILE_DIR/outputs/copper_bottom.gbr" $PACKAGE_DIR/$BOARD.GBL
cp "$CAMFILE_DIR/outputs/soldermask_top.gbr" $PACKAGE_DIR/$BOARD.GTS
cp "$CAMFILE_DIR/outputs/soldermask_bottom.gbr" $PACKAGE_DIR/$BOARD.GBS
cp "$CAMFILE_DIR/outputs/silkscreen_top.gbr" $PACKAGE_DIR/$BOARD.GTO
cp "$CAMFILE_DIR/outputs/silkscreen_bottom.gbr" $PACKAGE_DIR/$BOARD.GBO
cp "$CAMFILE_DIR/outputs/profile.gbr" $PACKAGE_DIR/$BOARD.GKO
cp "$CAMFILE_DIR/outputs/drills.xln" $PACKAGE_DIR/$BOARD.XLN
zip -r $PACKAGE_DIR-$DATE.zip $PACKAGE_DIR

