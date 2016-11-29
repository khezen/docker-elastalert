#!/bin/bash

mkdir -p /etc/elastalert
mkdir -p /usr/share/elastalert

if [ ! -f /etc/elastalert/elastalert.yml ]; then
    cp /.backup/elastalert.yml /etc/elastalert/elastalert.yml
fi