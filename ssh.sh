#!/bin/bash
#dialog --inputbox "Enter I.P Of The Server" 12 28 2> /tmp/ip.$$
#echo "ip"
echo "Enter IP Address Of Remote Machine" 
read Enter IP Address Of Remote Machine
ssh $Enter $IP $Address $Of $Remote $Machine
