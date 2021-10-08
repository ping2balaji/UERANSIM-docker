# UERANSIM-docker

Build docker image using:
docker build -t ping2balaji/\<name\>:\<tag\> . -f Dockerfile_ueransim


Start GNB --> bash urs_start_gnb.sh \<mcc\> \<mnc\> \<local-bind-ip\> \<remote-amf-ip\> \<nci\>

Start UE --> bash urs_start_ue.sh \<container-name\> \<mcc\> \<mnc\> \<op\> \<key\> \<imsi\> \<gnbaddr\>


