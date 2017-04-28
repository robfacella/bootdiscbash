#!/usr/bin/env bash
home=$(pwd)
hashfile=${home}"/hashes.txt"
echo $home
echo $hashfile

cd /media/root/OS/Windows/System32/config
pwdump SYSTEM SAM > ${hashfile}
cd $home
cat hashes.txt
