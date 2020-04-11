# Lineage buildscripts
========================

Please note, I use ~/android/lineage in this README but you can use whatever folder name you want.

First I recommend checking the official LineageOS wiki instructions for building for x2 here to see what are the dependencies and how to install them
https://wiki.lineageos.org/devices/x2/build

Also please note that repopick.sh isn't always updated. Please check LineageOS Gerrit in case there is changes to repopick topics.

Starting from zero:
---------
    mkdir -p ~/android/lineage
    cd ~/android/lineage
    repo init -u git://github.com/LineageOS/android.git -b lineage-17.1
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/lineage-x2-devs/local_manifests/lineage-17.1/local_manifest.xml > .repo/local_manifests/my_manifest.xml
    repo sync
    # OPTIONAL to use repopick unless you want to test WIP commits
    curl https://raw.githubusercontent.com/lineage-x2-devs/local_manifests/lineage-17.1/repopick.sh > repopick.sh
    . repopick.sh

If you've already synced Lineage-Sources:
----------
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/lineage-x2-devs/local_manifests/lineage-17.1/local_manifest.xml > .repo/local_manifests/my_manifest.xml
    repo sync
    # OPTIONAL to use repopick unless you want to test WIP commits
    curl https://raw.githubusercontent.com/lineage-x2-devs/local_manifests/lineage-17.1/repopick.sh > repopick.sh
    . repopick.sh

Building
----------
    cd ~/android/lineage
    curl https://raw.githubusercontent.com/lineage-x2-devs/local_manifests/lineage-17.1/x2_clean_build.sh > x2_clean_build.sh
    curl https://raw.githubusercontent.com/lineage-x2-devs/local_manifests/lineage-17.1/x2_dirty_build.sh > x2_dirty_build.sh
    curl https://raw.githubusercontent.com/lineage-x2-devs/local_manifests/lineage-17.1/x2_clean_build.sh > zl1_clean_build.sh
    curl https://raw.githubusercontent.com/lineage-x2-devs/local_manifests/lineage-17.1/x2_dirty_build.sh > zl1_dirty_build.sh
    ./x2_clean_build.sh // for x2 clean builds
    ./x2_dirty_build.sh // for x2 dirty builds
    ./zl1_clean_build.sh // for zl1 clean builds
    ./zl1_dirty_build.sh // for zl1 dirty builds

I made these modified scripts for convenience plus logs terminal output to files for easy scrolling later in your favorite text editor.
