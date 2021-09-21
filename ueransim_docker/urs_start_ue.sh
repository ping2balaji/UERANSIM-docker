#!/bin/bash
# this script will be called with following arguments:
# $1 : container_name
# $2 : MCC
# $3 : MNC 
# $4 : OPC
# $5 : Key
# $6 : IMSI
# $7 : GNB_IP
sed -i "s/container_name: .*/container_name: $1/g" ue1-compose.yaml
sed -i "s/MCC: '.*'/MCC: '$2'/g" ue1-compose.yaml
sed -i "s/MNC: '.*'/MNC: '$3'/g" ue1-compose.yaml
sed -i "s/OP: '.*'/OP: '$4'/g" ue1-compose.yaml
sed -i "s/KEY: '.*'/KEY: '$5'/g" ue1-compose.yaml
sed -i "s/IMSI: .*/IMSI: $6/g" ue1-compose.yaml
sed -i "s/GNB_ADDR: .*/GNB_ADDR: $7/g" ue1-compose.yaml
cat ue1-compose.yaml
docker-compose -f ue1-compose.yaml up ue1
