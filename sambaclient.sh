#!/bin/bash
dialog --infobox "Client Side" 05 15
sleep 1
dialog --inputbox "Enter I.P Of The Server" 12 28 2> /tmp/serverip.$$
dialog --inputbox "Folder Shared By The Server" 12 30 2> /tmp/servershare.$$
#dialog --inputbox "Mount In Folder" 10 25 2> /tmp/mnt.$$
#echo "Name Of New Directory"
#read  Name Of New Directory
#mkdir  /$Name $Of $New $Directory 
#mkdir /tmp/mnt.$$mnt
smbclient //$serverip/$servershare   #/$Name $Of $New $Directory 
