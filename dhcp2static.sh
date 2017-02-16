#!/bin/bash
set -x

##
# script for the allocation of static ip
#

#NETWORK_FILE='/etc/network/interfaces';
#NETWORK_FILE_BAK='/etc/network/interfaces.bak';

NETWORK_FILE='./interfaces';
NETWORK_FILE_BAK='./interfaces.bak';

echo "backup old interface. . . "
#mv $NETWORK_FILE $NETWORK_FILE_BAK
read -p "Enter the ip you want to set for this cvm:" n
echo "$n"
sed '20 c inface ens224 inet static\naddress '$n'\nnetmask 255.255.255.0' $NETWORK_FILE_BAK > $NETWORK_FILE
