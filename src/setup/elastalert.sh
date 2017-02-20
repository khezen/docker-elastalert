#!/bin/bash

# misc
apt-get update
apt-get install git wget build-essential python python-pip python-dev -y
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
pip install --upgrade pip
pip install --upgrade six

#elastalert
git clone https://github.com/Yelp/elastalert.git /elastalert
git checkout tags/v0.1.8
cd /elastalert
python setup.py install
pip install -r requirements.txt
cp -f config.yaml.example /.backup/elastalert.yml

# purge
apt-get remove git wget build-essential python-pip python-dev -y
