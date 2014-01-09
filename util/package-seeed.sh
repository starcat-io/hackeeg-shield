#!/bin/bash

DATE=`date +'%Y-%m-%d-%H%M'`
BOARD="hackeeg-shield"
DIR="$BOARD-seeedstudio-files"
rm -rf $DIR
mkdir -p $DIR 
cp $BOARD.toplayer.ger $DIR/$BOARD.GTL
cp $BOARD.agnd-layer2.ger $DIR/$BOARD.G2L
cp $BOARD.dvdd-layer3.ger $DIR/$BOARD.G3L
cp $BOARD.bottomlayer.ger $DIR/$BOARD.GBL
cp $BOARD.topsoldermask.ger $DIR/$BOARD.GTS
cp $BOARD.bottomsoldermask.ger $DIR/$BOARD.GBS
cp $BOARD.topsilkscreen.ger $DIR/$BOARD.GTO
cp $BOARD.bottomsilkscreen.ger $DIR/$BOARD.GBO
cp $BOARD.boardoutline.ger $DIR/$BOARD.GKO
cp $BOARD.drills.xln $DIR/$BOARD.TXT
zip -r $DIR-$DATE.zip $DIR

