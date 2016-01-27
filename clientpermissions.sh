#!/bin/bash
dialog --menu "Client Permissions" 16 38 3 "1" "Read,Write And Execute(rwx)" "2" "Read And Execute(r-x)" "3" "Read Only(r--)" 2> /tmp/input.$$
menuch=`cat /tmp/input.$$`
if [[ $menuch -eq  1 ]]
then 
dialog --inputbox "Enter Name Of Directory To Share On Network" 10 30 2> /tmp/sharedir.$$
dialog --inputbox "Enter I.P Of The Network" 10 30 2> /tmp/shareip.$$
shareip=`cat /tmp/shareip.$$`
sharedir=`cat /tmp/sharedir.$$`
echo "$sharedir $shareip(rwx)" >> /etc/exports
dialog --msgbox "Your Server Will Start In Few Second.." 10 30
sleep 1
service nfs restart
elif [[ $menuch -eq  2 ]]
then 
dialog --inputbox "Enter Name Of Directory To Share On Network" 10 30 2> /tmp/sharedir.$$
dialog --inputbox "Enter I.P Of The Network" 10 30 2> /tmp/shareip.$$
shareip=`cat /tmp/shareip.$$`
sharedir=`cat /tmp/sharedir.$$`
echo "$sharedir $shareip(rx)" >> /etc/exports
dialog --msgbox "Your Server Will Start In Few Second.." 10 30
sleep 1
service nfs restart
elif [[ $menuch -eq  3 ]]
then 
dialog --inputbox "Enter Name Of Directory To Share On Network" 10 30 2> /tmp/sharedir.$$
dialog --inputbox "Enter I.P Of The Network" 10 30 2> /tmp/shareip.$$
shareip=`cat /tmp/shareip.$$`
sharedir=`cat /tmp/sharedir.$$`
echo "$sharedir $shareip(r)" >> /etc/exports
dialog --msgbox "Your Server Will Start In Few Second.." 10 30
sleep 1
service nfs restart
fi
