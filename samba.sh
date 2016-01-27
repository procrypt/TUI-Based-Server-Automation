#!/bin/bash
if rpm -q samba
then
echo "Samba Already Installed.."
else
echo "Samba Not Installed Press Enter To Install.."
yum -y install samba
fi
if rpm -q samba-common
then
echo "Samba-common Already Installed.."
else
echo "Samba-common Not Installed Press Enter To Install.."
yum -y install samba-common 
fi
dialog --menu "Configure Menu" 10 50 2 "1" "Server Side" "2" "Client Side" 2> /tmp/input.$$
menuch=`cat /tmp/input.$$`
if [[ $menuch -eq 1 ]]
 then
./sambaserverconf.sh
fi
if [[ $menuch -eq 2 ]]
 then
./sambaclient.sh
fi
