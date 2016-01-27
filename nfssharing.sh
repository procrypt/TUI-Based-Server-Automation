#!/bin/bash
dialog --title "NFS-Server" --clear
dialog --inputbox "Enter Name Of Directory To Share On Network" 10 30 2> /tmp/sharedir.$$
dialog --inputbox "Enter I.P Of The Network" 10 30 2> /tmp/shareip.$$
shareip=`cat /tmp/shareip.$$`
sharedir=`cat /tmp/sharedir.$$`
echo "$sharedir $shareip" >> /etc/exports
dialog --msgbox "Your Server Will Start In Few Second.." 10 30
sleep 1
#dialog --yesno "Do You Want To Share The Directory" 10 30
#if Yes
#then
service nfs restart
#elif
#No then 
#exit 
#fi
