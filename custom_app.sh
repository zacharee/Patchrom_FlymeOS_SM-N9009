#!/bin/bash


apkBaseName=$1
tempSmaliDir=$2

function applyPatch () {
    app_name=$1
    app_dir=$2

    for patch in `find $app_name -name "*.patch"`
    do
        smali_file=`cat $patch | grep "^---" | sed "s@$app_name\/@$app_name#@" | cut -d"#" -f2 | awk -F "\t" '{print $1}'`
        patch $app_dir/$smali_file $patch

            for rej in `find $app_dir -name "*.rej"`
            do
                echo "Patch $patch failed!!"
                exit 1
            done
    done
}

# add missed columns
if [ "$1" = "TelephonyProvider" ];then
    echo ">>>> in custom_app for $1 to add missed column sub_state"
    applyPatch $1 $2
fi

# fix AbstractMethodError
if [ "$1" = "SystemUI" ];then
    echo ">>>> in custom_app for $1 to apply patch"
    applyPatch $1 $2
fi

# add missed columns
if [ "$1" = "MediaProvider" ];then
    echo ">>>> in custom_app for $1 to apply patch"
    applyPatch $1 $2
fi

# fix no sound when calling
if [ "$1" = "Telecom" ];then
    echo ">>>> in custom_app for $1 to apply patch"
    applyPatch $1 $2
    cp -rf overlay/Telecom/smali/* $app_dir/smali/
fi

