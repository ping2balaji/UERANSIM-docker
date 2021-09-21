#!/bin/bash
# this script will be called with following argument:
# $1 : MCC
# $2 : MNC
# $3 : LOCAL_BIND_IP
# $4 : REMOTE_AMF_IP
sed -i "s/MCC: '.*'/MCC: '$1'/g" gnb1-compose.yaml
sed -i "s/MNC: '.*'/MNC: '$2'/g" gnb1-compose.yaml
sed -i "s/GNB_ADDR: .*/GNB_ADDR: $3/g" gnb1-compose.yaml
sed -i "s/AMF_ADDR: .*/AMF_ADDR: $4/g" gnb1-compose.yaml
docker-compose -f gnb1-compose.yaml up gnb1
