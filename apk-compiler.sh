#!/bin/sh
echo '############# Easy ################'
echo '########## Android APK ############'
echo '############ Compiler #############'
echo '###################################'
echo '###################################'
echo ''
echo 'Enter Decompile Folder Address'
read DecompileFolder
echo 'Enter destination address example:'
echo 'imo.apk'
read dist
apktool b $DecompileFolder -o $dist
echo 'OK Done. Pick it up!'
