#!/bin/bash
source build/envsetup.sh

# device/leeco/msm8996-common
repopick --topic leeco-msm8996-p

# device/leeco/x2
repopick --topic leeco-x2-p

# device/leeco/zl1
repopick --topic leeco-zl1-p

# vendor/lineage
repopick 237117 # extract_utils: drop the "/system/" prefix from prints of blob names
repopick 238118 # extract_utils: be compatible with system-as-root layouts
repopick 239303 # extract_utils: cleanup variable names and arguments passed to extract() function
repopick 237270 # extract_utils: introduce -k (kang mode) option
repopick 237118 # extract_utils: introduce support for executing blob fixups
repopick 239526 # extract_utils: add option to print dependency graph for elf files
repopick 239477 # extract_utils: make --section match words anywhere in the line
repopick 239358 # extract_utils: template: use quotation marks and variable curly braces consistently
repopick 239359 # extract_utils: template: make --section argument non-positional
repopick 239360 # extract_utils: template: introduce kang mode
repopick 239527 # extract_utils: template: add support for the dependency graph function
