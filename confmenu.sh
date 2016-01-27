#!/bin/bash
dialog --menu "Configure Menu" 10 50 3 "1" "Share On Whole Network" "2" "Share To Specified Neworks" "3" "Change The Permissions Of The Client" 2> /tmp/input.$$
menuch=`cat /tmp/input.$$`
if [[ $menuch -eq 1 ]]
 then
 ./nfsnetworkshare.sh
elif [[ $menuch -eq 2 ]]
then
  ./nfssharing.sh
elif [[ $menuch -eq 3 ]]
then
    ./clientpermissions.sh
fi
