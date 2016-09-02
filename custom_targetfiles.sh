#!/bin/bash

TARGET_FILES_DIR=$1
SYSTEM_DIR=$TARGET_FILES_DIR/SYSTEM

cp -r vendor/system/app/mcRegistry $TARGET_FILES_DIR/SYSTEM/app/
rm -rf $TARGET_FILES_DIR/SYSTEM/media/audio/ui/PowerOn.ogg