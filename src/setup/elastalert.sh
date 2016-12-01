#!/bin/bash

# misc
apt-get update
apt-get install build-essential python python-dev python-pip git -y

#elastalert
git clone https://github.com/Yelp/elastalert.git /elastalert
cd /elastalert
#git checkout tags/v0.1.4
pip install -r requirements.txt
pip install -e .
python setup.py install

cp -f config.yaml.example /.backup/elastalert.yml
