#!/bin/sh
. luksEnv.sh

# Unmount the filesystem
umount $MOUNT
# Remove device mapping
cryptsetup remove $SECRETFS
# Disassociate file from loopback device
losetup -d $LOOP_DEV
rmdir $MOUNT
