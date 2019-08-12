#!/bin/sh
echo '############# Easy ################'
echo '########## Android APK ############'
echo '########### Decompiler ############'
echo '###################################'
echo '###################################'
echo ''
echo 'Enter APK name with address'
read APKFILE
apktool d -f -o payload $APKFILE
echo 'OK Done. Pick it up!'
