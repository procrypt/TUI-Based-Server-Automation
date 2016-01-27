#!/bin/bash
dialog --infobox "Welcome To Linux Servers" 10 30
sleep 1
dialog --menu "Servers Menu" 15 30 4 "1" "NFS-Server" "2" "Samba-Server" "3" "Yum-Server" "4" "SSH-Server" 2> /tmp/input.$$
menuselect=`cat /tmp/input.$$`
if [[ $menuselect -eq 1 ]]
then
./nfs.sh
fi 
if [[ $menuselect -eq 2 ]]
then
./samba.sh
fi
if [[ $menuselect -eq 3 ]]
then
./setup.sh
fi
if [[ $menuselect -eq 4 ]]
then
./ssh.sh
fi
