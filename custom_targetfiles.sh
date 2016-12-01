#!/bin/bash

TARGET_FILES_DIR=$1
SYSTEM_DIR=$TARGET_FILES_DIR/SYSTEM
TARGET_DIR=out/merged_target_files

cp -f other/UPDATE-SuperSU.zip $TARGET_DIR/META/
cp -f other/Dolby.zip $TARGET_DIR/META/
cp -r vendor/system/app/mcRegistry $TARGET_FILES_DIR/SYSTEM/app/
cp -r other/multiwindowblacklist.txt $TARGET_FILES_DIR/SYSTEM/etc/
rm -rf $TARGET_FILES_DIR/SYSTEM/media/audio/ui/PowerOn.ogg
