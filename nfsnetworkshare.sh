#!/bin/bash
dialog --msgbox "Your Data Will Be Shared On Whole Network" 8 50
dialog --inputbox "Enter Name Of Directory To Share On Network" 10 30 2> /tmp/sharedir.$$
dialog --inputbox "Input * To Share On Whole Network" 10 40 2> /tmp/shareip.$$
shareip=`cat  /tmp/shareip.$$`
sharedir=`cat /tmp/sharedir.$$`
echo "$sharedir $shareip" 2> /etc/exports
dialog --msgbox "Your Data Shared On Whole Network" 7 38
#sleep 1
#dialog --yesno "Do You Want Continue?" 08 25
#if [ --yesno = 0 ]
#then
service nfs restart
#else
#exit
#fi
