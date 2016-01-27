#!/bin/bash
dialog --menu "Configure Menu" 10 50 2 "1" "Public Access" "2" "Private Access" 2> /tmp/input.$$
menuch=`cat /tmp/input.$$`
if [[ $menuch -eq 1 ]]
 then
./PublicAccess.sh
fi
if [[ $menuch -eq 2 ]]
 then
./PrivateAccess.sh
fi
