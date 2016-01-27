#!/bin/bash
dialog --menu "Configure Menu" 10 50 2 "1" "Server Side" "2" "Client Side" 2> /tmp/input.$$
if [[ $menuch -eq 1 ]]
 then
./samba server conf.sh
fi
if [[ $menuch -eq 2 ]]
 then
./samba client.sh
fi
