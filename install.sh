#!/bin/bash

apt-get update
apt-get install geoip-bin mariadb-server -y
pip3 install -r requirements.txt --user --upgrade
