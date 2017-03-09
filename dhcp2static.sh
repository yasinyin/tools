#!/bin/bash
set -x

##
# script for the allocation of static ip
#

NETWORK_FILE='/etc/network/interfaces';
NETWORK_FILE_BAK='/etc/network/interfaces.bak';
DHCP_FILE='./interfaces.bak';

echo "backup old interface. . . "
mv $NETWORK_FILE $NETWORK_FILE_BAK
read -p "Enter the ip you want to set for this cvm:" n
echo "$n"
sed '20 c iface ens224 inet static\naddress '$n'\nnetmask 255.255.255.0' $DHCP_FILE > $NETWORK_FILE
ifdown ens160;ifup ens160;
ifdown ens192;ifup ens192;
ifdown ens224;ifup ens224;
sleep 3;
ip a;
