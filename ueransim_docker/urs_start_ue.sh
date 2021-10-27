#!/bin/bash
# this script will be called with following arguments:
# $1 : container_name
# $2 : MCC
# $3 : MNC 
# $4 : OPC
# $5 : Key
# $6 : IMSI
# $7 : GNB_IP
cp /root/ue1-compose.yaml /root/$1.yaml
sed -i "s/ue1:/$1:/g" /root/$1.yaml
sed -i "s/container_name: .*/container_name: $1/g" /root/$1.yaml
sed -i "s/MCC: '.*'/MCC: '$2'/g" /root/$1.yaml
sed -i "s/MNC: '.*'/MNC: '$3'/g" /root/$1.yaml
sed -i "s/OP: '.*'/OP: '$4'/g" /root/$1.yaml
sed -i "s/KEY: '.*'/KEY: '$5'/g" /root/$1.yaml
sed -i "s/IMSI: .*/IMSI: $6/g" /root/$1.yaml
sed -i "s/GNB_ADDR: .*/GNB_ADDR: $7/g" /root/$1.yaml
cat /root/$1.yaml
docker-compose -f /root/$1.yaml up $1
