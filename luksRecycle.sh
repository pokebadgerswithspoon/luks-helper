#!/bin/sh
. luksEnv.sh
cryptsetup remove $SECRETFS
cryptsetup create $SECRETFS $LOOP_DEV
