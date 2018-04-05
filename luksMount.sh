#!/bin/sh
. luksEnv.sh
# Associate a loopback device with the file
losetup $LOOP_DEV $FILE
# Encrypt mapped device; you'll be prompted for the password
if [ "x$TYPE" == "xLUKS" ]; then
  cryptsetup luksOpen $LOOP_DEV $SECRETFS
else
  cryptsetup create $SECRETFS $LOOP_DEV
fi
# Mount the filesystem
mkdir -p $MOUNT
mount /dev/mapper/$SECRETFS $MOUNT
