#!/bin/bash
source build/envsetup.sh

# hardware/qcom/power
repopick 237769; # power: Add specific powerhal for msm8937
repopick 237770; # power: msm8937: Update power profile settings
repopick 237002; # power: Handle launch and interaction hints for perf HAL platforms
repopick 237771; # power: Build with with BOARD_VNDK_VERSION

# device/leeco/msm8996-common & zl1
repopick --topic leeco-msm8996-p

# device/leeco/x2
repopick --topic leeco-x2-p

# device/leeco/zl1
repopick --topic leeco-zl1-p
