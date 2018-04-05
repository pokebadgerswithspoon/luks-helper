#!/bin/sh
LOOP=${LOOP:-0}
LOOP_DEV=${LOOP_DEV:-/dev/loop$LOOP}
NAME=${NAME:-`uname -n`}
FILE=${FILE:-/var/local/$NAME.secretfs}
SIZE_GB=${SIZE_GB:-25}
MOUNT=${MOUNT:-/mnt/$NAME}
SECRETFS=${SECRETFS:-secretfs$LOOP}
TYPE=${TYPE-:"mapper"}

if [ "x$1" != "xrun" ]; then
   echo "Usage: $0 run|test"
   if [ "x$1" = "xtest" ]; then
     echo " LOOP_DEV=$LOOP_DEV"
     echo " FILE=$FILE"
     echo " MOUNT=$MOUNT"
     echo " SECRETFS=$SECRETFS"
   fi
   exit
fi

