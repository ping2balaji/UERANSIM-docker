#!/bin/bash
# this script will be called with following argument:
# $1 : MCC
# $2 : MNC
# $3 : LOCAL_BIND_IP
# $4 : REMOTE_AMF_IP
# $5 : NCI
# $6 : GTPU_ADDR
sed -i "s/MCC: '.*'/MCC: '$1'/g" /root/gnb1-compose.yaml
sed -i "s/MNC: '.*'/MNC: '$2'/g" /root/gnb1-compose.yaml
sed -i "s/GNB_ADDR: .*/GNB_ADDR: $3/g" /root/gnb1-compose.yaml
sed -i "s/AMF_ADDR: .*/AMF_ADDR: $4/g" /root/gnb1-compose.yaml
sed -i "s/NCI: .*/NCI: '$5'/g" /root/gnb1-compose.yaml
sed -i "s/GTPU_ADDR: .*/GTPU_ADDR: $6/g" /root/gnb1-compose.yaml
docker-compose -f /root/gnb1-compose.yaml up gnb1
