#!/bin/bash
source build/envsetup.sh

### audio
# topic:tinycompress-p

### bt
# topic:pie-bt-caf

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

repopick --topic tinycompress-p

repopick --topic pie-bt-caf

repopick --topic wifi-p

repopick --topic pie-qcom-sepolicy

repopick --topic pie-db-upgrade

repopick --topic pie-kernel-headers

repopick --topic pie-styles

repopick --topic leeco-msm8996-p

# nfc: Restore pn548 support to 1.1 HAL
repopick 223192
