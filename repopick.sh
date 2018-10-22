#!/bin/bash
source build/envsetup.sh

### wifi
# topic:wifi-p

### sepolicy
# topic:pie-qcom-sepolicy

### db
# topic:pie-db-upgrade

### kernel
# topic:pie-kernel-headers

###
# Leeco
###
# topic:leeco-msm8996-p

### nfc
# 223192

# DNM: x2: selinux permissive for 16.0 bringup
# repopick 229413

repopick --topic wifi-p

repopick --topic pie-qcom-sepolicy

repopick --topic pie-db-upgrade

repopick --topic pie-kernel-headers

repopick --topic pie-styles

repopick --topic pie-recovery-pathmap

repopick --topic pie-hw-fde

repopick --topic pie-mode-bits

repopick --topic pie-aidl-noop

repopick --topic pie-recovery-pathmap

repopick --topic pie-sdk-docs

repopick --topic pie-powermenu

repopick --topic pie-expanded-desktop

repopick --topic pie-su

repopick --topic pie-privacy-guard

repopick --topic pie-qcom-fm

repopick --topic pie-camera2

repopick --topic pie-deskclock

# vold: Always use libbootloader_message from bootable/recovery namespace
cd system/vold; git fetch https://github.com/LineageOS/android_system_vold refs/changes/17/231717/2 ; git checkout FETCH_HEAD ; cd ../..


repopick --topic leeco-msm8996-p

repopick --topic leeco-x2-p

# nfc: Restore pn548 support to 1.1 HAL
repopick 223192
