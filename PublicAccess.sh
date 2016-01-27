#!/bin/bash
dialog --msgbox "Your Data Will Be Shared On Whole Network" 8 50
echo "Name Of New Directory"
read  Name Of New Directory
mkdir  /$Name $Of $New $Directory 
echo "[$Name]" 2> /etc/samba/smb.conf
echo  "path= /$Name $Of $New $Directory" 2> /etc/samba/smb.conf 
echo  "public= yes" 2> /etc/samba/smb.conf
echo  "writable= yes" 2> /etc/samba/smb.conf
service smb restart
