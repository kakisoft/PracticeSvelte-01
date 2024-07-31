#!/bin/bash

#========================================
#           initial setting
#========================================
export TZ=Asia/Tokyo
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#========================================
#            intall utils
#========================================
apt update
apt install -y wget
apt install -y curl
apt install -y unzip
apt install -y vim
apt install -y net-tools

#========================================
#            intall AWS CLI
#========================================
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
rm awscliv2.zip
rm -rf aws

#========================================
#           front end setting
#========================================
/tmp/setting_scripts/setting-front-end.sh