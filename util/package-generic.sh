#!/bin/bash

DATE=`date +'%Y-%m-%d-%H%M'`
BOARD="ADS1299-shield"
DIR="$BOARD-cam-files"
rm -rf $DIR
mkdir -p $DIR 
cp $BOARD.toplayer.ger $DIR
cp $BOARD.agnd-layer2.ger $DIR
cp $BOARD.dvdd-layer3.ger $DIR
cp $BOARD.bottomlayer.ger $DIR
cp $BOARD.topsoldermask.ger $DIR
cp $BOARD.bottomsoldermask.ger $DIR
cp $BOARD.topsilkscreen.ger $DIR
cp $BOARD.bottomsilkscreen.ger $DIR
cp $BOARD.boardoutline.ger $DIR
cp $BOARD.drills.xln $DIR
zip -r $DIR-$DATE.zip $DIR

