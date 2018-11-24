#!/bin/bash
source build/envsetup.sh

# added to local_manifest under dependencies
# repopick 227748; #lineage: Enable qcom thermal/vr HALs

# QCOM Thermal/VR
repopick 234179; # vr: Use project pathmap
repopick 234178; # thermal: Use project pathmap
repopick 234181; # Remove Android.mk

repopick --topic pie-qcom-sepolicy

repopick --topic leeco-msm8996-p
repopick --topic leeco-x2-p
