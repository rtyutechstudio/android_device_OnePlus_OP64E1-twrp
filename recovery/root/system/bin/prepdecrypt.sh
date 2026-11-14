#!/system/bin/sh
# Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
# All rights reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc. 
mkdir /mnt/vendor/persist
mount -t ext4 /dev/block/by-name/persist /mnt/vendor/persist
sleep 0.5
setprop crypto.ready 1
echo done