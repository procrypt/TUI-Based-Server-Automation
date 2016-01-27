#!/bin/bash
if rpm -q nfs-utils
then
echo -n "NFS-Utils Already Installed.."
else
echo "NFS-Utils Not Installed Press Enter To Install.."
yum -y install nfs-utils
fi
dialog --menu "Server Or Client" 10 24 2 "1" "Server Side" "2" "Client Side" 2> /tmp/input.$$
menuc=`cat /tmp/input.$$`
if [[ $menuc -eq  1 ]]
then 
dialog --infobox "Welcome To NFS-Server" 10 30
dialog --menu "NFS-Server" 10 30 2 "1" "Start Sharing" "2" "Configure Server" 2> /tmp/input.$$
menuch=`cat /tmp/input.$$`
fi
if [[ $menuch -eq  1 ]]
then 
     ./nfssharing.sh
elif [[ $menuch -eq  2 ]]
then 
      ./confmenu.sh
fi 
if [[ $menuc -eq  2 ]]
then
dialog --infobox "Client Side" 05 15
sleep 1
dialog --inputbox "Enter I.P Of The Server" 12 28 2> /tmp/serverip.$$
dialog --inputbox "Folder Shared By The Server" 12 30 2> /tmp/servershare.$$
#dialog --inputbox "Mount In Folder" 10 25 2> /tmp/mnt.$$
echo "Name Of New Directory"
read  Name Of New Directory
mkdir  /$Name $Of $New $Directory 
#mkdir /tmp/mnt.$$mnt
mount $serverip:/$servershare   /$Name $Of $New $Directory 
fi
