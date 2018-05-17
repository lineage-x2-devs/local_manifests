# Lineage buildscripts
========================

Starting from zero:
---------
    mkdir -p ~/android/lineage
    cd ~/android/lineage
    repo init -u git://github.com/LineageOS/android.git -b lineage-15.1
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/lineage-o-x2/local_manifests/working/lineage-15.1/local_manifest.xml > .repo/local_manifests/my_manifest.xml
    repo sync

If you've already synced Lineage-Sources:
----------
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/lineage-o-x2/local_manifests/working/lineage-15.1/local_manifest.xml > /path/to/lineage/.repo/local_manifests/my_manifest.xml
    repo sync

Building
----------
    curl https://raw.githubusercontent.com/lineage-o-x2/local_manifests/lineage-15.1/clean_x2_build.sh > /path/to/lineage/clean_x2_build.sh
    curl https://raw.githubusercontent.com/lineage-o-x2/local_manifests/lineage-15.1/dirty_x2_build.sh > /path/to/lineage/dirty_x2_build.sh
    . clean_x2_build.sh // for clean builds
    . dirty_x2_build.sh // for dirty builds

I made these modified scripts for convenience plus logs terminal output to files for easy scrolling later in your favorite text editor.
