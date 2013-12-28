#!/bin/bash

DATE=`date +'%Y-%m-%d-%H%M'`
BOARD="ADS1299-shield"
DIR="$BOARD-cam-files"
rm -rf $DIR
mkdir -p $DIR 
cp $BOARD.toplayer.ger $DIR/$BOARD.GTL
cp $BOARD.agnd-layer2.ger $DIR/$BOARD.GND
cp $BOARD.dvdd-layer3.ger $DIR/$BOARD.PWR
cp $BOARD.bottomlayer.ger $DIR/$BOARD.BOT
cp $BOARD.topsoldermask.ger $DIR/$BOARD.GTS
cp $BOARD.bottomsoldermask.ger $DIR/$BOARD.GBS
cp $BOARD.topsilkscreen.ger $DIR/$BOARD.GTO
cp $BOARD.bottomsilkscreen.ger $DIR/$BOARD.GBO
cp $BOARD.boardoutline.ger $DIR
cp $BOARD.drills.xln $DIR/$BOARD.TAP
zip -r $DIR-$DATE.zip $DIR

